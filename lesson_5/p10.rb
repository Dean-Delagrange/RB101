# return new array (map) with each number incremented by 1
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hash|
  increment_hash = {}
  hash.each do |key, value|
    increment_hash[key] = value + 1
  end
  increment_hash
end
