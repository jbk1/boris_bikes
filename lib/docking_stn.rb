class DockingStation

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes = []
	end

	def bike_count
		@bikes.count
	end

	def dock(bike)
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def not_to_be_full
	end

	def full?
		bike.count == @capacity
	end


end
