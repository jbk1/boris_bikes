require 'bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "accepts a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it 'can release bikes' do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq(0)
	end

	it 'should know when it\'s full' do
		expect(holder).not_to be_full
		10.times { holder.dock(Bike.new) }
		expect(holder).to be_full
	end

	it 'should not accept a bike when it\'s full' do
		10.times {holder.dock(Bike.new)}
		expect(lambda {holder.dock(bike)}).to raise_error(RuntimeError)
	end

	it 'should provide the list of available bikes' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(broken_bike)
		holder.dock(working_bike)

		expect(holder.available_bikes).to eq([working_bike])
	end

end