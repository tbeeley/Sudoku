def revise_cell_neighbours
	cells.each_with_index do |cell, index|

	end
end



Yehdef update_all_neighbours
cells.each_with_index do |cell, index|
	cell.neighbours += neighbours_in_row_at(index)
	cell.neighbours += neighbours_in_column_at(index)
	cell.neighbours += neighbours_in_box_at(index)
	remove_self_and_duplicate_neighbours_for(cell)
end
end

def neighbours_in_row_at(index)
	cells.slice(index - index % 9, 9)
end


def assign_starting_values_from(puzzle_string)
	puzzle_array = make_array_from(puzzle_string)
	(0..80).each { |i| cells[i].value = puzzle_array[i] }
end

def make_array_from(puzzle_string)
	puzzle_string.split('').collect { |str| str.to_i }.to_a
end


def neighbours_in_column_at(index)
	cells.drop(index % 9).each_slice(9).map(&:first)
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
