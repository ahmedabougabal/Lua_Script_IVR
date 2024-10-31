-- defining an array of elements inside lua

local foods = {} -- empty table --! AND IT IS ONE '1' based and not '0' based as in many Pls
local FoodsType = type(foods)

print(foods)     -- prints out the address of the table in the memory
print(FoodsType) -- table

--[[ we can use an if condition to check if a the variable above a table to run some certain scripts...]]

local values =
{
  1, 2, 3, 4, nil, 5
}

local names = { "donatollo", "splinter", "rapheal" }
print(names[0]) --> nil as arrays 'table' are 1 based index
print(names[1]) --> donatollo
print(#names)   --> length of the table is 3

-- get the lenght of a string using the hash/pound sign

local item = "orange"
print(# item) -- 6 chars

-- implementing a hashset/dictionary in Lua
local FoodsDict = { fav1 = "meat", fav2 = "chicken legs" }
print(FoodsDict.fav1) -- accessing a value by its key

FoodsDict     = { "m1", "m2", "m3" }

FoodsDictType = type(FoodsDict) -- remains a table even if we changed its structure
print(FoodsDictType)            -- table

-- naming conventions
-- lowercase for locals while uppercase names for variables are for the globals + can't start a name with a number
