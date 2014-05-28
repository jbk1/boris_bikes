require "bike"

describe Bike do
	# let(:bike) {Bike.new}		#creates a variable for all tests
	# let(:broken_bike) {Bike.new.break!}

	it 'is initially not broken' do
		bike = Bike.new 
		expect(bike.broken?).to be_false
	end


	# it' can break' do
	# 	expect(broken_bike).to be_broken
	# end

	# it 'can be fixed' do
	# 	expect(broken_bike.fix!).not_to be_broken
	# end

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





