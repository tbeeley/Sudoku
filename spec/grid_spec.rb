require 'grid'
require 'cell'

describe 'Grid' do

	context 'when created' do

		it 'should have 81 cells' do
			grid = Grid.new
			expect(grid.cells.length).to eq 81
		end

	end

	context 'should know' do

		xit 'how to solve the unfilled cells' do
			grid = Grid.new
			grid.solve
			expect(grid.solved?).to eq true
		end

	end

end
