require 'cell'

describe 'Cell' do

	let(:cell) { Cell.new }

	context 'when created' do

		it 'should have a value of 0' do
			expect(cell.value).to eq 0
		end

		it 'should have a full set of candidates' do
			expect(cell.candidates).to eq [1,2,3,4,5,6,7,8,9]
		end

		it 'should have no neighbours' do
			expect(cell.neighbours).to eq []
		end

	end

	context 'should know' do

		it 'when its been filled' do
			filled_cell = Cell.new(3)
			expect(filled_cell.filled?).to eq true
		end

		it 'can fill itself' do
			cell.fill(3)
			expect(cell.value).to eq 3
		end

	end

end
