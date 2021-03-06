require 'grid'
require 'cell'

describe 'Grid' do

	let(:easy_sudoku) { ('015003002000100906270068430490002017501040380003905000900081040860070025037204600') }
	let(:solved_sudoku) { ('123456789123456789123456789123456789123456789123456789123456789123456789123456789')}

	context 'when created' do

		let(:grid) { Grid.new(easy_sudoku)}

		it 'should have 81 cells' do
			expect(grid.cells.length).to eq 81
		end

		it 'should have an unsolved first cell' do
			expect(grid.cells[0]).not_to be_filled
		end

		it 'should have a solved second cell with value 1' do
			expect(grid.cells[1]).to be_filled
			expect(grid.cells[1].value).to eq 1
		end

	end

	context 'Can' do

		let(:solved_grid) { Grid.new(solved_sudoku)}
		let(:grid) { Grid.new(easy_sudoku)}

		it 'tell us when its solved' do
			expect(solved_grid.solved?).to eq true
		end

		xit 'show a cell its neighbours' do
			grid.revise_cell_neighbours
			expect(grid.cells[0].neighbours.count).to eq 20
			expect(grid.cells[80].neighbours.count).to eq 20
		end

		it 'solve the whole board' do
			expect(grid.solved?).to eq false
			grid.solve
			expect(grid.solved?).to eq true
		end
	end

end
