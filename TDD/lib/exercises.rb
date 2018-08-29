def my_uniq(array)
  raise 'input not an array' unless array.is_a?(Array)
  array.uniq
end

def two_sum(array)
  raise 'input not an array' unless array.is_a?(Array)
  result = []
  
  array.each_index do |idx|
    array.each_index do |jdx|
      next if jdx <= idx
      result << [idx,jdx] if array[idx] + array[jdx] == 0
    end
  end
  
  result
      
end

def my_transpose(array)
  raise 'input not an array' unless array.is_a?(Array)
  return array unless array.all?{|el| el.is_a?(Array)}
  
  array.each_index.reduce([]) do |arr, idx|
    arr << array.each_index.reduce([]) do |sub_arr, jdx|
      sub_arr << array[jdx][idx]
    end
  end
end

def stock_picker(array)
  raise 'input not an array' unless array.is_a?(Array)
  result = Hash.new
  
  (0...array.length - 1).each do |idx|
    (idx...array.length).each do |jdx|
      result[[idx, jdx]] = array[jdx] - array[idx]
    end
  end 
  result.sort_by {|k, v| v }.last.first
end




################# TOWERS HANOI #################




class Board
  attr_accessors :towers
  
  def initialize
    @towers = [[3,2,1], [], []]
  end
  
  def move
    puts "Where do you want to move? "
    start = Integer(gets.chomp)
    last = Integer(gets.chomp)
    
    until valid_move?([start, last])
      puts "Re-enter a valid move"
      start = Integer(gets.chomp)
      last = Integer(gets.chomp)
    end
    
    @towers[last].push(@towers[start].pop)
  end

  def valid_move?(start, last)
    return false if @towers[start].empty?
    
    return false if @towers[start].last > @towers[last].last
    
    return false unless (1..3).include?(start) && (1..3).include?(last)

    true
  end
  
  def won?
    return true if @towers[1].lenth == 3 || @towers[2].length == 3
    false
  end
  
end













#