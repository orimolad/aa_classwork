def third_anagram?(str1, str2) # nlogn
  str1.chars.sort == str2.chars.sort
end

p third_anagram?("gizmo", "sally")    #=> false
p third_anagram?("elvis", "lives")    #=> true