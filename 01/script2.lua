input = {} -- your inputs
combo = 50
count = 0 

for i = 1, #input do  
  local movestr = input[i]:sub(2)
  local move = tonumber(movestr)
  if string.sub(input[i], 1, 1) == "L" then 
    for j = 1, move do
      combo = combo - 1
      if combo == 0 then 
        count = count + 1
      end
      if combo < 0 then
        combo = 99
      end
    end
  else 
    for j = 1, move do
      combo = combo + 1
      if combo > 99 then
        combo = 0
        count = count + 1
      end
    end
end
 
    
end

pprint(count)
