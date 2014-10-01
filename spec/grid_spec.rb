require 'grid'
require 'cell'

describe 'Grid' do

	context 'when created' do

		it 'should have 81 cells' do
			grid = Grid.new
			expect(grid.cells.length).to eq 81
		end

	end

end
