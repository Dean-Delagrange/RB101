# re-order logically by odds
# expected: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


arr.sort_by! do |ele|
  ele.select do |int|
    int.odd?
  end
end

p arr