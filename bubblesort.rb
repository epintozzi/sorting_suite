class BubbleSort #define class called BubbleSort
  def sort(letters) #define new method called sort
    
    letters.length.times do #determine how many elements are in the the letters array and start a do loop that runs through it that many times

    position = 0 #define variable called position and set equal to zero

      begin #start new loop

        left_letter = letters[position] #set element at position equal to left_letter
        right_letter = letters[position+1] #set element at position+1 equal to right_letter

        value = left_letter <=> right_letter #compare left and right letters to see which is bigger

        if  value == 1 #1 means right is smaller; 0 or -1 means left is smaller and in the correct order
          letters[position], letters[position+1] = letters[position+1], letters[position]   #swap those letters!
        end

        position = position + 1 #increase position to move to next element in array
      end while letters[position+1] != nil #keep going until position+1 indicates you've reached the end of array by returning nil value
    end

    letters #return sorted array

  end
end

sorter = BubbleSort.new
puts sorter.sort(["d", "b", "a", "c"])
