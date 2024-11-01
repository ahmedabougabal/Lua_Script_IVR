do
  local first_name = "ahmed"
  print(first_name)
end
-- print(first_name) -- 'nil' undefined global error
-- ! if we removed the 'local' from the funciton above, we can then be able to refrence the variable inside and use on the global scope

function FuncName()
  print("Meow")
end

-- you have to call it to run
FuncName()

-- passings in args
function DoSth(distro_name)
  print("hello, " .. distro_name)
end

DoSth("kali")

-- functions calling another functions
function F1()
  return "from F1"
end

function F2()
  print("this is F2")
  local multiLine = [[a function call ]] .. F1()
  print(multiLine)
end

F2()

-- declare a function after calling it inside another function behavior

function Get_name()
  print("here is the name")
  Get_age() -- get age is defined below and the call of the function get_name returns the result as expected
  --! but calling the get_name function before defining the function get_age returns a traceback error
end

-- get_name() --! error

function Get_age()
  print("here is the age")
end

Get_name() -- runs fine

-- we can also nest a function definition into another function's own definition

function MyNestedFunction(x)
  function Inside()
    print("from inside")
  end

  Inside()
  return x
end

print(MyNestedFunction("test"))
Inside()

-- functions can be assigned to variables

Myfunc = function()
  print("hello lua!")
end

-----

function Second(age)
  print(4)
end

function Takes2(param1, param2)
  print("your ID is " .. param1)
  print("your age is " .. tostring(param2))
  Second() -- prints out 4
end

Takes2(24, 34)

-------------
-- !(pass in a function as an input argument to another function)
---  [[this is an example for function passings / first class functions / call back pattern]]
-- life scenario use case : plugin system with swappable behaviors
GetAge = function()
  print("age is 9 ")
end


GetAge2 = function()
  print("age is 15 ")
end

-- passing a param inside a function definition to act as a refrence for an outer function
function Manage(my_name, age) -- this is a higher order function and the second param is a call-back function
  print("hello " .. my_name)
  age()                       -- this is where we invoke the function using the argument name not the actual function name that was assigned above (GetAge and GetAge2)
end

-- both functions calls have a reference to the function (not an actual call to pass in the results) but only passing
-- a reference to the function itself,
Manage("ahmed", GetAge2)
Manage("dan", GetAge)

--------------------------
print("=====================================")
-- how do we return functions from funcitons

GetInfo1 = function()
  print("info 1 is called ")
end


GetInfo2 = function()
  print("info 2 is called ")
  return function() -- we are returning an anonymous function here as a return value from a function
    print("this is a returned function")
  end
end


function Auth(arg1, arg2)
  print("welcome, " .. arg1)
  arg2()
end

Auth("Ryu", GetInfo2()) -- GetInfo2 is executed here firstly and its value is returned before the function Auth runs
print("=====================================")
Auth("Ryu", GetInfo2)   -- GetInfo2 here is passed as a reference, runs after the function 'Auth'
--and doesnot return the value of the anonymous function,
--!The anonymous function is never reached because we're not capturing GetInfo2's return value
