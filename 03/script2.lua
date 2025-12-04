local utils = require("utils")
local input = utils.parseFileChars("samples.txt")
local tableSize = 15
local banks = #input / tableSize 
local count = 0
index = 0

local function findIndex(val, array)
    for i = 1, #array do
        if array[i] == val then 
            return i
        end    
    end       
end

local function sort(array, j)
    local left = 12 - j
    local arrayOg = {}
    for e = 1, #array do
    table.insert(arrayOg, array[e])
    end
    table.sort(array, function(a, b) return a > b end)

    for i = 1, left do
        local indexed = findIndex(array[i], arrayOg)
        if i == 1 then
        end
        if array[i+indexed] ~= nil then
            index = index + indexed
            return array[i]
        end
    end

end

for i = 0, banks - 1 do
local bankvals = {}
startCount = i * tableSize + 1 
if i == 0 then
    startCount = 1
end 
for e = startCount, startCount + tableSize - 1 do
    table.insert(bankvals, input[e])
end

vals = {}
for j = 1, 12 do
    local setVals = {}
    for e = index + 1, tableSize do
    table.insert(setVals, bankvals[e])
    end
    if i == 1 then
    print("h"..sort(setVals, j))
    end
end
end





-- i give up :( no solving ts one for me)