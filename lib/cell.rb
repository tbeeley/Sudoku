class Cell

	def initialize(value = 0)
		@value = value
		@neighbours = []
		@candidates = [1,2,3,4,5,6,7,8,9]
	end

	attr_accessor :value, :neighbours, :candidates

	def filled?
		self.value > 0
	end

	def fill(number)
		@value = number
	end

	def revise_candidates
		# Original candidates reject numbers in neighbours.
		neighbours.each { |cell| candidates.delete(cell.value) }
	end

	def solve
		#return if filled?
		if candidates.count == 1
			self.fill(candidates)
		end
	end


end
