
class Bike

	def initialize
		@broken = false
	end


	def broken?
		@broken
	end


	def break!
		@broken = true
		self				#refers to the instance of the class		
	end

	def fix!
		@broken = false
		self
	end


end