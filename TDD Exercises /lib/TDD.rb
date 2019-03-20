class Array 
  def my_unique 
    hash = Hash.new {|h,k| h[k] = 0 }
    self.each do |ele|
      hash[ele] +=1 
    end 
    hash.keys
  end

  def two_sum
    arr = []
    (0...self.length).each do |i|
      ((i+1)...self.length).each do |j|
        pairs = [i,j]
        arr << pairs if (self[i] + self[j]) == 0
      end
    end
    arr
  end

  def my_transpose
    arr = Array.new(self.length) {Array.new(self.length)}
    (0...self.length).each do |row|
      (0...self.length).each do |col|
       arr[col][row] = self[row][col]
      end
    end
    arr
  end

  def stock_picker
    arr = []
    largest_diff = 0
    (0...self.length).each do |i|
      ((i+1)...self.length).each do |j|
        pairs = [i,j]
        diff = self[j] - self[i]
         if diff > largest_diff
          arr = pairs
          largest_diff = diff
         end 
      end
    end
    arr
  end 
  
end 

@towers = [1,2,3,4,5]

def hanoi(num_disks, right=0, middle=1, left=2)
  if num_disks == 1
   @towers[middle] << @towers[right].pop
  else
    hanoi(num_disks-1, right, left, middle)
    hanoi(1,           right, middle, left)
    hanoi(num_disks-1, left, middle, right)
  end 
  middle
end

class Hanoi 
  def initialize 
    @pegs = [ [1,2,3],[],[] ]
  end
  
  def play
    until won?
      print @pegs 
      input = gets.chomp.split(',').map(&:to_i)
      move(input.first, input.last)
    end 
  end 

  def won?
    @pegs[-1] == [1,2,3] 
  end 

  def move(s_pos, e_pos) #(1,3)
     if @pegs[e_pos].empty? || @pegs[s_pos].first < @pegs[e_pos].first 
        @pegs[e_pos].unshift(@pegs[s_pos].shift)
     end 
  end 


end 

game = Hanoi.new
game.play