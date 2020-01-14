class MaxIntSet
  attr_reader :max
  attr_accessor :store
  def initialize(max)
      @max = max
      @store = Array.new(max, false)
  end

  def insert(num)
    raise "Out of bounds" if num >= self.max || num < 0
    store[num] = true
  end

  def remove(num)
    store[num] = false
  end

  def include?(num)
    store[num]
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  attr_accessor :store, :num_buckets

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
  end

  def insert(num)
    return false if self.include?(num) 
    self.store[num % num_buckets] << num
  end

  def remove(num)
    self.store[num % num_buckets].delete(num)
  end

  def include?(num)
    self.store[num % num_buckets].include?(num)
    
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :num_buckets, :store
  attr_accessor :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
     return false if self.include?(num) && count > 1
    self.store[num % num_buckets] << num  
  end

  def remove(num)
    self.store[num % num_buckets].delete(num)
  end

  def include?(num)
     self.store[num % num_buckets].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
