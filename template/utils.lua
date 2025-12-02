local fs = require("fs")
local utils = {}

-- template utils for aoc - ivie :3

function utils.parseFile(path, mode)
    local file = assert(io.open(path, "r"))
    local items = {}

    for line in file:lines() do
        line = line:match("^%s*(.-)%s*$")
        if line ~= "" then
            if mode == "number" then
                local n = tonumber(line)
                if n then
                    table.insert(items, n)
                end
            else 
                table.insert(items, line)
            end
        end
    end

    file:close()
    return items
end

function utils.parseFileChars(path)
    local file = assert(io.open(path, "r"))
    local items = {}

    while true do
        local char = file:read(1)   
        if not char then break end  

        if not char:match("%s") then
            table.insert(items, char)
        end
    end

    file:close()
    return items
end

function utils.checkMatch(value, array)
    for i = 1, #array do 
        if value == array[i] then
            return true
        end
    end
    return false
end

function utils.checkNumber(value)
    if tonumber(value) then
        return true
    end
    return false
end

function utils.checkAdj(startIndex, array, rowSize, compare)
    local leftEdge = startIndex % rowSize == 1
    local rightEdge = startIndex % rowSize == 0
    local topEdge = startIndex <= rowSize
    local bottomEdge = startIndex > #array - rowSize

    local canLeft = not leftEdge
    local canRight = not rightEdge
    local canUp = not topEdge
    local canDown = not bottomEdge

    if canLeft and array[startIndex - 1] == compare then return true end
    if canRight and array[startIndex + 1] == compare then return true end
    if canUp and array[startIndex - rowSize] == compare then return true end
    if canDown and array[startIndex + rowSize] == compare then return true end
    if canUp and canLeft and array[startIndex - rowSize - 1] == compare then return true end
    if canUp and canRight and array[startIndex - rowSize + 1] == compare then return true end
    if canDown and canLeft and array[startIndex + rowSize - 1] == compare then return true end
    if canDown and canRight and array[startIndex + rowSize + 1] == compare then return true end

    return false
end

return utils
