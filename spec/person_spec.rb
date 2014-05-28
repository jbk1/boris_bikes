require 'person'

describe Person do

	let(:person) {Person.new}

	it "initially has no bike" do
		expect(person.have_bike?).to be_false
	end

	it 'can rent a bike' do
		person = Person.new(:bike)
		person.rent_bike!
		expect(person.have_bike?).to be_true
	end

	it 'can return a bike' do
		person.rent_bike!
		person.return_bike!
		expect(person.have_bike?).to be_false
	end

	xit 'can break a bike' do
		bike = double :bike
		expect(bike).to receive(:break!)
		person.rent_bike!
		person.break_bike!

	end


end























# 	it 'can fall down' do
		

# 		# bike = double :bike    				
# 		# expect(bike).to receive(:break!)

# 		# person = Person.new(bike)
# 		# person.fall_down

# 	end

# 	it "can rent a bike from a statation" do

# 		# station = double :station
# 		# expect(station).to receive(:release_bike)

# 		# person.rent_bike_from station


# 	end


# 	it "has a bike after renting one from station" do
		
# 		# station = double :station, release_bike: :bike
# 		# # same as:
# 		# # station = double :station
# 		# # expect(station).to receive(:release_bike).and_return(:bike)

# 		# # same as:
# 		# station = double(:station, {release_bike: :bike})


# 		# person.rent_bike_from(station)
# 		# expect(person).to have_bike

# 	end

# end

