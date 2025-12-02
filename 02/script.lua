local utils = require("utils")
local input = utils.parseNum("input.txt")
count = 0


for i = 1, #input, 2 do 
first = input[i]
second = input[i+1]

repeat 
    local str = tostring(first)
    local len = #str
    local mid = math.floor(len / 2)
    local firstHalf = string.sub(str, 1, mid)
    local secondHalf = string.sub(str, mid + 1, len)
    if firstHalf == secondHalf then 
        print(firstHalf .." is first half")
        print(secondHalf .. " second half")
        count = count + first
    end
    first = first + 1
until first > second

end

print(count)