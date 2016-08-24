class MergeSort
  def sort(original_array)
    mid = original_array.length/2 #find mid-point of original_array
    if mid > 0
      first_split = original_array.shift(mid) #split original_array at index of indicated midpoint
      remaining_split = original_array #rename original_array to remaining_split

      sorted_first_split = sort(first_split)
      sorted_remaining_split = sort(remaining_split)

      merged_array = []
      begin
        value = sorted_first_split[0] <=> sorted_remaining_split[0] #returns value of 1 if right side is smaller
        if value == 1
          merged_array << sorted_remaining_split.delete_at(0)
        else
          merged_array << sorted_first_split.delete_at(0)
        end
      end until sorted_first_split.empty? or sorted_remaining_split.empty?
      if sorted_first_split != []
        merged_array.concat(sorted_first_split)
      end
      if sorted_remaining_split != []
        merged_array.concat(sorted_remaining_split)
      end
    else
      return original_array
    end
    merged_array
  end
end

sorter = MergeSort.new
puts sorter.sort(["d", "b", "a", "c"])
