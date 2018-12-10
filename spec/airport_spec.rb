require 'airport'

describe Airport do
  subject(:airport) { described_class.new(100) }
  let(:plane) { double :plane }
  let(:weather) { double :weather }

  describe '#land(plane)' do

    context 'when not stormy' do
      before do
          allow(airport).to receive(:stormy?).and_return false
      end

      it 'should instruct a plane to land' do
        expect(airport).to respond_to(:land).with(1).argument
      end

      context 'when airport full' do
        it 'should not allow landing' do
          100.times do
            airport.land(plane)
          end
          expect{ airport.land(plane) }.to raise_error "Cannot land plane, airport at full capacity"
        end
      end
    end

    context 'when stormy' do
      it 'should not allow landing' do
        allow(airport).to receive(:stormy?).and_return true
        expect{ airport.land(plane) }.to raise_error "Cannot land plane, weather is too dangerous"
      end
    end
  end

  describe '#take_off' do

    context 'when not stormy' do
      before do
        allow(airport).to receive(:stormy?).and_return false
      end

      it 'should instruct a plane to take off' do
        expect(airport).to respond_to(:take_off).with(1).argument
      end
    end

    context 'when stormy' do
      it 'should not allow take off if weather is stormy' do
        allow(airport).to receive(:stormy?).and_return true
        expect{ airport.take_off(plane) }.to raise_error "Cannot land plane, weather is too dangerous"
      end
    end
  end
end
