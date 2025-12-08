local utils = require("utils")
local input = utils.parseFileChars("input.txt")
local tableSize = 100
local banks = #input / tableSize 
local total = 0
index = 0
local answers = {}


local function findIndex(val, array)
    for i = 1, #array do
        if array[i] == val then 
            return i
        end    
    end       
end

local function remNL(str)
    return str:gsub("[\r\n]+", "")
end

local function sort(array, j)
    local left = 12 - j
    local arrayOg = {}
    for e = 1, #array do
    table.insert(arrayOg, array[e])
    end
    table.sort(array, function(a, b) return a > b end)

    for i = 1, left + 1 do
        local indexed = findIndex(array[i], arrayOg)
        if array[left+indexed] ~= nil or left == 0 then
            index = index + indexed
            return array[i]
        end
    end

end

for i = 0, banks - 1 do
answers[i+1] = {}
index = 0
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
    table.insert(answers[i+1], sort(setVals, j))

end
end


for i = 1, #answers do
    local count = tonumber(table.concat(answers[i]))
    total = total + count
end

pprint(total)


