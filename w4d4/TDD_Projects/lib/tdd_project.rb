def my_uniq(arr)
    new_arr = []
    arr.each {|ele| new_arr << ele if !new_arr.include?(ele)}
    new_arr
end

class Array

    def two_sum
        pairs = []
        i = 0
        j = 1
        while i < self.length - 1
            while j < self.length
                if self[i] + self[j] == 0 && i < j
                    pairs << [i, j]
                    
                end
                j += 1
            end
            i += 1
            j = 1
        end
        pairs
    end

end

def my_transpose(arr)
    transposed = []
    arr.each.with_index do |rows, i|
        new_arr = []
        while new_arr.length < rows.length
            rows.each.with_index do |col, j|
                
                new_arr << arr[j][i]
            end
                transposed << new_arr 
        end
    end
    transposed 

end