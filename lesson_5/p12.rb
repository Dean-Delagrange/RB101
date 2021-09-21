# Return a hash where key is the first item can value is the second
# Do NOT use .to_h

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh
