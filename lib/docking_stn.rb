# Must load the bike_container module
require_relative 'bike_container'

class DockingStation

	include BikeContainer

	def initialize(options = {})
		# self.capacity is calling the capacity=() method
		self.capacity=( options.fetch(:capacity, self.capacity() ) )
		# self.capacity=(25)
		# @capacity = 25
		# self.capacity = options.fetch(:capacity, capacity)
	end


end
