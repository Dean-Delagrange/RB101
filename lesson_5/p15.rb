# Return new array containg hash's that are ALL even 
# Notes: first hash is singular, second hash inclueds 3, final include 2
#      first .select
#      second .select for key value pairs
#             .values
#      : else for second .select  
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hash|
            hash.all? do |_, value|
              value.all? {|int| int.even?}
            end
          end

p new_arr