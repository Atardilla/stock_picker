user_array = [19, 50, 22, 34, 100, 121, 145, 10, 111]

def stock_picker(array)

  totals = [0]
  pairs = [[0,0,]]
  my_hash = Hash.new(0)

  array.each do |item| 
    current_index = array.index(item) 
    for i in ((current_index + 1)...array.length)
      totals.push(array[i] - array[current_index])
      current_couple = [current_index, i]
      pairs.push(current_couple)
      my_hash[current_couple] = totals[totals.length-1]
    end #ln7 for
  end #ln4 array.each  

  if my_hash.values.max <= 0
    puts "I'd rather dont buy anything.. Do you wantyour profit to be: #{my_hash.values.max}?? Do you???"
  else
    puts "You should buy and sell in those days"
    print my_hash.key(my_hash.values.max); puts
    puts "In order to make the biggest profit: #{my_hash.values.max}" 
  end #ln19 case
end #ln3 def

stock_picker(user_array)    

