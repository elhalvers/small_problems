# Using a basic loop method to do a transformation (`map`)


def map_loop(collection)
  result = []
  counter = 0

  loop do
    break if counter == collection.size

    current_value = collection[counter]
    result << current_value * 2
    counter += 1
  end
  result
end

def my_map(collection)
  collection.map { |value| value * 2 }
end

array = [1, 2, 3, 4, 5]

p map_loop(array) #== [2, 4, 6, 8, 10]
p my_map(array) #== [2, 4, 6, 8, 10]
