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

-- using built in math methods
local op = 3 ^ 2 - math.abs(4 * -2) + math.floor(math.sin(0.5))

print(op)              -- 1.0

print(math.floor(3.8)) -- 3
print(math.ceil(3.2))  -- 4

-- rounding in lua
-- there is not built in methods for rounding a number in lua but here is a workaround
print(math.floor(3.3 + 0.5)) -- add a 0.5 to act as a rounding method

--* or we can create a function specified in rounding numbers and a support for negative numbers
function Round(x) -- capitalized the first letter for naming conventions
  return x >= 0 and math.floor(x + 0.5) or math.ceil(x - 0.5)
end

-- print a random value using math.random()
-- math.randomseed(os.time())
-- math.random(); math.random(); math.random()

-- it will generate a different random number each time as it is automatically seeded (no need for the previous 2 lines)
-- but seeding might be needed if you are running on an older lua version / different enviroment implementing lua.
local randomNum = math.random(1, 10)
print("number generated = " .. randomNum)

--#region extra safer and ensures consistency
math.randomseed(os.time()) -- every second you run this, it will generate a new number based on the os.time method (unique to second)
local randNum = math.random(1, 10)
print("number generated = " .. randNum)
--#endregion

-- implementing math.min and math.mix on a table (array of nums)

arr_tab = { 1, 2, 5, 4, 9, 10, 50, 430, 100 }
-- print(math.min(arr_tab)) error
-- print(math.max(arr_tab)) error
-- to avoid the above error we should use the unpack method to unpack the table's elements into individual args
print("max value is " .. math.max(table.unpack(arr_tab)))
print("min value is " .. math.min(table.unpack(arr_tab)))
