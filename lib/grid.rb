class Grid

	def initialize(numbers_string)
		@cells = Array.new(81) { Cell.new }
		add_starting_cells(numbers_string)
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

	def add_starting_cells(numbers_string)
		#take given string
		#convert into 9x9 square.

		#Turn it into an array in the correct format
		sudoku_array = numbers_string.split('').collect {|element| element.to_i}.to_a

		#Add these numbers in the new array to values of cells
		(0..80).each { |coordinate| cells[coordinate].value = sudoku_array[coordinate]  }
	end



	def solved?
		cells.all?(&:filled?)
	end

end
