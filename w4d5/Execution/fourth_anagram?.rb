def fourth_anagram?(str1, str2) # O(n)
  count = Hash.new(0)
  str1.each_char { |char| count[char] += 1 }
  str2.each_char { |char| count[char] -= 1 }
  count.values.all? {|ele| ele == 0 }
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true