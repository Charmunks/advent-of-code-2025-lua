local utils = require("utils")
local input = utils.parseNum("input.txt")
count = 0

function isRepeatingPattern(str)
    local len = #str
    if len == 0 then return false end

    for patternLen = 1, math.floor(len / 2) do
        if len % patternLen == 0 then
            local pattern = str:sub(1, patternLen)
            local repeated = pattern:rep(len / patternLen)
            if repeated == str then
                return true
            end
        end
    end

    return false
end


for i = 1, #input, 2 do 
first = input[i]
second = input[i+1]

repeat 
    local str = tostring(first)
    if isRepeatingPattern(str) then
        count = count + first
    end
    first = first + 1
until first > second

end

print(count)