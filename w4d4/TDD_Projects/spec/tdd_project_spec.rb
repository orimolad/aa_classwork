require 'rspec'
require 'tdd_project'

describe "#my_uniq" do
    it "removes duplicates from an array" do
        expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end
end

describe Array do
    describe "#two_sum" do
        it "will return the indices of the pair from the array that sum to zero" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end

describe '#my_transpose' do
    it ' will change the row values to column values and vice versa' do
        expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
end