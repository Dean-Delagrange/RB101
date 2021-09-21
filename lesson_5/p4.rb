# Change all 3's to 4's
arr1 = [1, [2, 3], 4]
p "arr1"
arr1[1][1] = 4
p arr1
puts "--------------"

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
p "arr2"
arr2[2] = 4
p arr2
puts "--------------"

hsh1 = {first: [1, 2, [3]]}
p "hsh1"
hsh1[:first][2] = 4
p hsh1
puts "--------------"

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
p "hsh2"
hsh2[['a']][:a][2] = 4
p hsh2
puts "--------------"