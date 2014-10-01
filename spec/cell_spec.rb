require 'cell'

describe 'Cell' do

	context 'when created' do

		it 'should have a value of 0' do
			cell = Cell.new
			expect(cell.value).to eq 0
		end

	end

	context 'should know' do

		it 'when its been filled' do
			filled_cell = Cell.new(3)
			expect(filled_cell.filled?).to eq true
		end
	end

end
