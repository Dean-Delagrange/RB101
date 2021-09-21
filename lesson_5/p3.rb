# For each collection show how you would reference 'g'
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p "arr 1" 
p arr1[2][1][3]
p "------------"

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p "arr 2" 
p arr2[1][:third][0]
p "------------"

arr3 = [['abc'], ['def'], {third: ['ghi']}]
p "arr 3" 
p arr3[2][:third][0][0]
p "------------"

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p "hsh1" 
p hsh1['b'][1]
p "------------"

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p "hsh2" 
p hsh2[:third].key(0)
p "------------"