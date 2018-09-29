-- letter frequency cerner_2^5_2018
function calculate_frequency ()
	local t = {}
	local function count (x)
	if x then
		if t[x] then
			t[x] = t[x] + 1
		else
			t[x] = 1
		end
	else
		return t
	end
	end
	return count
end
 
local input = "Since 1995, First Hand has changed the lives of more than 400,000 people.  When you contribute to First Hand, you are part of that legacy and helping to create healthier tomorrows for children, families and communities around the world. Lives are changing for the better because of First Hand, but you don't have to take our word for it… listen to what the kids have to say about the First Hand Legacy in the video to the left! Thank you for all you do for First Hand!"
local letterCount = calculate_frequency()
for letter in input:gmatch("%a") do
	letterCount(letter)
end
for k, v in pairs(letterCount()) do
	print(k, v)
end
