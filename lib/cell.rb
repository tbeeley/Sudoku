class Cell

	def initialize(value = 0)
		@value = value
	end

	attr_reader :value

	def filled?
		self.value > 0
	end

	def candidates
		#this is the value options for the cell.
	end

end
