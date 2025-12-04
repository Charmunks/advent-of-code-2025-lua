local utils = require("utils")
local input = utils.parseFileChars("input.txt")
local tableSize = 100
local banks = #input / tableSize 
local count = 0

local function findIndex(val, array)
    for i = 1, #array do
        if array[i] == val then 
            return i
        end    
    end       
end

for i = 0, banks - 1 do
local bankvals = {}
local bankvals2 = {}
startCount = i * tableSize + 1 
if i == 0 then
    startCount = 1
end 
for e = startCount, startCount + 98 do
    table.insert(bankvals, input[e])
end
for e = startCount, startCount + 99 do
    table.insert(bankvals2, input[e])
end
table.sort(bankvals, function(a, b) return a > b end)
local highIndex = findIndex(bankvals[1], bankvals2)
local secondVals = {}

for e = highIndex + 1, #bankvals2 do
    table.insert(secondVals, bankvals2[e])
end

table.sort(secondVals, function(a, b) return a > b end)

val = bankvals[1]..secondVals[1]

if i == 198 then 
    print(val)
    pprint(bankvals2)
end

count = count + val

table.sort(secondVals, function(a, b) return a > b end)







end
pprint(count)

