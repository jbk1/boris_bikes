class Person

	def initialize(bike = nil)
		@bike = bike	
	end

	def have_bike?
		@bike
	end

	def rent_bike!
		@bike = true
		self
	end

	def return_bike!
		@bike = false
		self
	end

	def break_bike!
		@bike.break!
	end

	


end









































# 	def initialize(bike=nil)

# 		@bike = bike

# 	end


# 	def has_bike?

# 		!@bike.nil?

# 	end


# 	def fall_down
# 		 @bike.break!

# 	end

# 	def rent_bike_from (station)

# 		@bike = station.release_bike

# 	end


