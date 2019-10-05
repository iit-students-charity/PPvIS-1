def bucket_sort(array, bucket_size = 5)

  if array.empty? || array.length == 1
    return array
  end

  min_value = array[0]
  max_value = array[0]

  array.each do |item|
    if item < min_value
      min_value = item
    elsif item > max_value
      max_value = item
    end
  end

  bucket_count = ((max_value - min_value) / bucket_size).floor + 1
  bucket_array = Array.new(bucket_count)

  (0..bucket_array.length - 1).each do |i|
    bucket_array[i] = []
  end

  array.each do |item|
    bucket_array[((item - min_value)/bucket_size).floor] << item
  end

  sorted_array = []

  bucket_array.each do |bucket|
    new = selection_sort(bucket)
    sorted_array.concat(new)
  end

  return sorted_array
end