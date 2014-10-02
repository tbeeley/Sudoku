class Cell

	def initialize(value = 0)
		@value = value
		@candidates = [1,2,3,4,5,6,7,8,9]
		@neighbours = []
	end

	attr_reader :value, :candidates, :neighbours

	def filled?
		self.value > 0
	end

	def fill(number)
		@value = number
	end

end
