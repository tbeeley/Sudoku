class Grid

	def initialize
		@cells = Array.new(81) { Cell.new }
	end

	attr_accessor :cells

end
