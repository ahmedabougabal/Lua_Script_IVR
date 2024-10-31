function doStuff()
  local a = 5
end

local b = 400
print(b) --> nil

name = "lua"
print(name) --> executes

-- printing out a here gives nil as a is defined with local inside a
-- function, the same way for defining a variable in the global scope
-- but using the keyword 'local' will result in the same behavior as
--  the keyword local also wraps the variable with its value inside
-- a container.

-- using semicolon as a statement terminator is beneficial for executing
-- multiple commands in 1 line (block wrapped)

age = 18; print(age)

-- on working with the REPL interface (terminal with lua),
--  you can't define a local variable and treat it as a global variable
-- as it will output out of scope
do
  local stats = "up and running"
end
print(stats) -- 400 (undefined == out of scope)

-- nil (doesnot exist)
local empty_undefined = nil
print(empty_undefined)

--#region
print(True == true) -- false (case sensitive)
True = "lua script"
print(True)         -- lua script
--#endregion

-- (variable names (global scope)in lua should have their first letter capitailized as of the lua's naming conventions )
-- while for local named variables are typed in lowercase (best practices)
x = 6       -- global defined variable
local y = 4 -- localized scope variable (even if it's defined in the global scope (not inside a fucntion or a loop))

-- INT data type
local num = 30
print(num)
-- casting the int to a string
To_string_var = tostring(num)
print(type(num))           -- number

print(To_string_var + 20)  -- addition --> 50
print(To_string_var .. 20) -- use '..' for concatenation --> 3020

local MyAge = 25
-- MyAge += 4 -- error (not supported in lua)
MyAge = MyAge + 4 -- overwriting the local variable and not creating a new one
print(MyAge)      -- 29 --* use f2 for renaming any repeated variable names in all your codebase instantly

-- string concatenation in lua isnot supported using the '+' sign , use '..' instead

-- FullName = "ahmed" + "abou gabal"
-- print(FullName) --! exception

MiddleName = 'mostafa'
FullName = "ahmed " .. MiddleName .. " abou gabal"
print(FullName)

-- implementing multiple line strings
-- [[  ]] -- denotes multi-line strings

local var1 = [[pizza
lua
python
bash
]] .. FullName .. [[,]] .. [[ an ITIayan]] -- the same as this "."
print(var1)

-- how to make a multi-line comment
--> Implement using a single line comment double hyphens then a double square brackets :
--[[
this is
a
multi
line
comment.
]]
