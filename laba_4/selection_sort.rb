def selection_sort(arr)
  (arr.size-1).times do |index|
    tmp_item, tmp_index = arr[index], index
    for i in index...arr.size
      tmp_item, tmp_index = arr[i], i if arr[i] < tmp_item
    end
    arr[index], arr[tmp_index] = arr[tmp_index], arr[index]
  end
  arr
end