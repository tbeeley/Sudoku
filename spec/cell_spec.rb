require 'cell'

describe 'Cell' do

	context 'when created' do

		it 'should have a value of 0' do
			cell = Cell.new
			expect(cell.value).to eq 0
		end
	end

end
