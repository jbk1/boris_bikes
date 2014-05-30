require 'docking_stn'

describe 'docking station' do
	let(:bike) {Bike.new}
	let(:station) {DockingStation.new(:capacity => 20)}

end

# Common functionality between Docking Staion, Garage and Van would be; accepting bikes, counting bikes, releasing bikes, available bikes.