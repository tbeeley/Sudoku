class Grid

	def initialize(numbers_string)
		@cells = Array.new(81) { Cell.new }
		add_starting_cells(numbers_string)
	end

	attr_accessor :cells

	def add_starting_cells(numbers_string)
		#Turn it into an array in the correct format
		sudoku_array = numbers_string.split('').collect {|element| element.to_i}.to_a
		#Add these numbers in the new array to values of cells
		(0..80).each { |coordinate| cells[coordinate].value = sudoku_array[coordinate] }
	end

	def solve
		until solved?
			revise_cell_neighbours
			cells.each {|cell| cell.solve_cell}
		end
	end

	def solved?
		cells.all?(&:filled?)
	end




	# Below is the how the cell should know its candidates:

	def revise_cell_neighbours
		#Go through each cell and make its index available
		cells.each_with_index do |cell, index|
			# Return an array, by using slice to find the range between the start and end of the row.
			cell.neighbours += cells.slice(index - index % 9, 9)
			cell.neighbours += cells.drop(index % 9).each_slice(9).map(&:first)
			cell.neighbours += neighbours_in_box_at(index)
			remove_self_and_duplicate_neighbours_for(cell)
		end
	end

	def neighbours_in_box_at(index)
		row = (index / 9)
		col = index % 9
		triplets = [[0,1,2], [3,4,5], [6,7,8]]

		triplets.each do |triplet|
			row = triplet if triplet.include?(row)
			col = triplet if triplet.include?(col)
		end

		retrieve_box_cells_at(row, col)
	end

	def retrieve_box_cells_at(row, col)
		box = []
		row.each do |cell|
			box << @cells[cell * 9 + col.first, 3]
		end
		box.flatten
	end

	def remove_self_and_duplicate_neighbours_for(cell)
		cell.neighbours.delete(cell)
		cell.neighbours.uniq!
	end


end
