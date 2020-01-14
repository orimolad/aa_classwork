def bad_two_sum?(arr, target)
  (0...arr.length-1).each do |start|
    (start + 1...arr.length).each do |ending|
      return true if arr[start] + arr[ending] == target
    end
  end
  false
end

def ok_two_sum?(arr, target)
  arr.sort!
  start = 0
  ending = arr.length - 1
  while start < ending
    if arr[start] + arr[ending] == target
      return true
    elsif arr[start] + arr[ending] > target
      ending -= 1
    else
      start += 1
    end
  end
  return false
end

require "byebug"
# def two_sum?(arr, target)
#   hashed = Hash.new(0)
#   arr.each { |ele| hashed[ele] += 1 }
#   p hashed
#   arr.any? { |ele| ele * 2 != target && hashed[target - ele] == 1 }
# end

def two_sum?(arr, target)
  debugger
  compliments = {}
  arr.each do |ele|
    return true if compliments[target - ele] 
    compliments[ele] = true
  end
  false
  
end


arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10)