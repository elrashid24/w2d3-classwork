require_relative "../lib/TDD.rb"

RSpec.describe Array do 

  describe '#my_unique' do 
    it 'return unique values from an array' do 
      expect([1, 2, 1, 3, 3].my_unique).to eq [1, 2, 1, 3, 3].uniq 
    end 
  end 

  describe '#two_sum' do
    it 'returns array of indicies' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe '#my_transpose' do
   let(:row) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
    it 'transposes array' do
      expect(row.my_transpose).to eq(row.transpose)
    end
  end

  describe '#stock_picker' do
    it 'returns indicies of largest difference' do
      expect([10,4,8,11,42,8].stock_picker).to eq([1,4])
    end

  end

end 

