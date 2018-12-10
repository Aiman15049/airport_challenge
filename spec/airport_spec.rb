require 'airport'

describe Airport do

 it 'should instruct a plane to land' do
   expect(subject).to respond_to(:land).with(1).argument
 end

 it 'should instruct a plane to take off' do
   expect(subject).to respond_to(:take_off).with(1).argument
 end



end
