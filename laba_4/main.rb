require_relative 'selection_sort'
require_relative 'bucket_sort'

random_array = (1..16).to_a.shuffle!
puts "Random array:     #{random_array}"
puts "Bubble sort :     #{selection_sort(random_array)}"
random_array.shuffle
puts "Patience sorting: #{bucket_sort(random_array)}"
