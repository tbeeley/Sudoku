class Cell

	def initialize(value = 0)
		@value = value
	end

	attr_reader :value

	def filled?
		self.value > 0
	end

end
