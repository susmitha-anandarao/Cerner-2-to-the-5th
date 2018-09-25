# parallel assignment in ruby
# cerner_2^5_2018

# swapping
i = 0
j = 1
puts "i = #{i}, j=#{j}"
i,j = j,i
puts "i = #{i}, j=#{j}"

# Compute values, then assign 
a, b, c = 40, a + 11, a + b + c
print "B: a = ", a, ", b = ", b, ", c = ", c, "\n"

# Extras on left get no value
a, b, c = 2, 3
print "D: a = ", a, ", b = ", b, ", c = ", c, "\n"

# Extras on right get left out
a, b, c = 11, 12, 13, 14, 15
print "E: a = ", a, ", b = ", b, ", c = ", c, "\n"
