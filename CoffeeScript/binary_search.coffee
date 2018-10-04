# Binary search for cerner_2^5_2018
binarySearch = (input, search_value) ->
  do recurse = (low = 0, high = input.length - 1) ->
    mid = Math.floor (low + high) / 2
    switch
      when high < low then NaN
      when input[mid] > search_value then recurse low, mid - 1
      when input[mid] < search_value then recurse mid + 1, high
      else mid

console.log('Position = ' + binarySearch([10,20,30,40], 3)) # NaN
console.log('Position = ' + binarySearch([10,20,30,40], 40)) # 3
