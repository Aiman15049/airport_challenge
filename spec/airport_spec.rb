require 'airport'

describe Airport do
  subject(:airport) { described_class.new(100) }

 it 'should instruct a plane to land' do
   expect(airport).to respond_to(:land).with(1).argument
 end


 it 'should instruct a plane to take off' do
   expect(airport).to respond_to(:take_off).with(1).argument
 end

 it 'should not allow landing when at capacity' do
   plane = double :plane
   100.times do
     airport.land(plane)
   end
   expect{ airport.land(plane) }.to raise_error "Cannot land plane, airport at full capacity"
 end


end
