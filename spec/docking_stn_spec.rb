require 'docking_stn'

describe 'docking station' do
	let(:bike) {Bike.new}
	let(:station) {DockingStation.new(:capacity => 20)}


	it 'accepts a bike' do
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it 'can release bikes' do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)

	end

	it 'should know when it\'s full' do
	expect(station).not_to be_full
	20.times { station.dock(Bike.new) }
	expect(station).to be_full
	end

	it 'should not accept a bike when it\'s full' do
		20.times {station.dock(Bike.new)}
		expect(lambda {station.dock(bike)}).to raise_error(RuntimeError)
	end

	it 'should provide the list of available bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		station.dock(broken_bike)
		station.dock(working_bike)

		expect(station.available_bikes).to eq([working_bike])
	end



end