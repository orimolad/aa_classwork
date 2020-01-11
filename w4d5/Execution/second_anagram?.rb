def second_anagram?(str1, str2) #time complexity O(n^2)
  chars1 = str1.chars
  chars2 = str2.chars
  chars1.each do |char|
    if chars2.index(char)
      idx = chars2.index(char)
      chars2.delete_at(idx)
    end
  end
  chars2.empty?
end

p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true