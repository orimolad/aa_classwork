def first_anagram?(str1,str2)
  chars1 = str1.split("")
  chars2 = str2.split("")

  permutation(chars1).include?(chars2)

end

def permutation(chars)
  return [chars] if chars.length <= 1

  ret = []
  first = chars.shift
  perms = permutation(chars)
  perms.each do |perm|
    idx = 0
    while idx <= perm.length
      left = perm.take(idx)
      right = perm.drop(idx)
      ret << left + [first] + right
      idx += 1
    end
  end
  ret
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true