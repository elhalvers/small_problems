# Using a basic loop method for a 'select' type of problem.
# find and return the even numbers from an input array


def loop_select(collection)
  result = []
  counter = 0

  loop do
    break if counter == collection.size
    current_value = collection[counter]
    
    result << current_value if current_value.even?
    counter += 1
  end
  result
end

def select(collection)
  collection.select { |value| value.even? }
end


array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p loop_select(array)
p select(array)
