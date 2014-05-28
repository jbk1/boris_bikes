require "bikes"

describe Bike do
# 
# this 'let' method initialises a new instance of the 'bike' instance variable that can be called my any method that chooses.
	let(:bike) {Bike.new}

	it 'is initially not broken' do
		expect(bike).not_to be_broken
	end
	# same as:

	it 'can be broken' do
		bike.break!
		expect(bike).to be_broken
	end

	it 'can be fixed' do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end
	
end











#we're describing the functionality of a specific class, Bike

# describe Bike do


  # this is a specific feature (behaviour) 
  # that we expect to be present


  # it "should not be broken after we create it" do
    # the_bike = Bike.new # initialise a new object of Bike class



    # expect an instance of this class to have 
    # a method "broken?" that should return false

	# Expect the method broken? of the object 'bike' to return false



	# expect(the_bike.broken?).to be_false



    #same as above with different syntax:
    # expect(the_bike).not_to be_broken

  # end
# end





