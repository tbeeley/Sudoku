require 'cell'

describe 'Cell' do

	let(:cell) { Cell.new }

	context 'when created' do

		it 'should have a value of 0' do
			expect(cell.value).to eq 0
		end

		it 'should have no neighbours' do
			expect(cell.neighbours).to eq []
		end

		it 'should have a full set of candidates' do
			expect(cell.candidates).to eq [1,2,3,4,5,6,7,8,9]
		end

	end

	context 'methods: should' do

		it 'know when its been filled' do
			filled_cell = Cell.new(3)
			expect(filled_cell.filled?).to eq true
		end

		it 'be able to fill itself' do
			cell.fill(3)
			expect(cell.value).to eq 3
		end

		it 'know its revised candidates' do
			cell.neighbours += [Cell.new(3), Cell.new(4), Cell.new(5), Cell.new(6)]
			cell.revise_candidates
			expect(cell.candidates).to eq [1,2,7,8,9]
		end

		it 'should solve itself if only one candidate' do
			cell.candidates = [3]
			cell.solve_cell
			expect(cell.value).to eq [3]
		end

	end

end
