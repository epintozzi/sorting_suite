#How Beth would approach the problem
class BubbleSort
  def sort(list)
    our_loop = true
    while our_loop
      our_loop = false
      (list.length-1).times do |i|
        if list[i] > list[i+1]
          list.insert(i, list.delete_at(i+1))
          our_loop = true
        end
      end
    end
    puts list
  end
end

sorter = BubbleSort.new
puts sorter.sort(["d", "b", "a", "c"])
