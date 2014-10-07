class Grid

	def initialize
		@cells = Array.new(81) { Cell.new }

	end

	attr_accessor :cells

	def solve
		# return if solved?
		#check if sudoku is solved
		#go through each cell. Find unfilled cells.
		#fill(solve) each cell.
	end

	def fill
		#go through each cell
		#find candidates
		#...
	end



	def solved?
		cells.all?(&:filled?)
	end

end
