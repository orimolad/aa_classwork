require "byebug"

class Map
  def initialize
    @map = []
  end

  def set(key, value)
    # debugger
    @map.each_with_index do |kv_pair, idx|
    this_key = kv_pair[0]

      if this_key == key
        @map[idx][1] = value
        return [key, value]
      end
    
    end

    @map << [key, value]
    [key, value]
  end

  def get(key)
    @map.each do |kv_pair|
      this_key = kv_pair[0]
      val = kv_pair[1]
      return val if key == this_key
    end
    nil
  end

  def show
    print "{"
    @map.each do |kv|
      k = kv[0]
      v = kv[1]
      print "#{k} => #{v}, "
    end
    print "}"
  end
end