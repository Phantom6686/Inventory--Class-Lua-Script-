--Scripts starts below here

local Inventory = {}

local Finder = require("TInv")

local WeaponNamesPrinter = table.concat(Finder.name,", ")
print(WeaponNamesPrinter)

--[[io.write("What item do you want to remove from your Inventory? ")
local MeleeBag = io.read()]]

function Inventory:new()
local UserBag = {}
setmetatable(UserBag,{__index = Inventory})

return UserBag
end

function Inventory:add(content)

local InitSearch = Finder:search(content)

    if InitSearch then
   print(content.." Found!!")
    table.insert(self,content)
elseif InitSearch == nil then
    print(content.." does not exist")
end
end

function Inventory:remove(Item)
local UserNothave = Finder:Remove(Item)
for i = 1,#self do
    if self == Item then
        print("You have removed "..Item)
        table.remove(self,i)
        return
    end
    end
    if UserNothave == Item then
        print("You don't possess a "..Item)
    else
        print(Item.." doesn't exist")
    end
end[i]

local bag1 = Inventory:new()
local bag2 = Inventory:new()

bag1:add("Dagger")
bag1:add("Hatchet")
bag1:add("Cutlass")
bag2:add("Hatchet")
bag2:add("Dagger")
bag1:add("Cutlass")

bag2:remove("Dagger")
bag1:remove("Hatchet")
bag2:remove("Sword")

for i = 1, #bag2 do
print(bag2.." is found in Bag2")
end[i]

for i = 1, #bag1 do
print(bag1.." is found in Bag1")
end[i]