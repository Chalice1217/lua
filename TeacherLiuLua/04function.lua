
-- 函数

--[[

   1. 函数的定义
   2. 函数直接赋值给一个变量
   3. 全局和局部函数
   4. 函数的多返回数值特性
   5. 函数作为参数进行赋值和调用
]]--



-- 1.函数的定义

--[[

   1.函数的定义格式 :
     function funName(param1,parma2,...)
        [函数体]
	 end

   2. Lua函数基本性质 :
    A: 函数无需定义返回类型,可以返回任意类型与任意数量的数值
	B: 函数的参数,无需定义参数类型
	C: 函数无需大括号
	D: 可以定义变量,把函数直接赋值给它,从而获得相同功能

]]--

--1.1定义一个函数 :
function fun1(num1)
  print("输入的参数是:"..num1)
end

-- 调用函数 :
fun1(60)												--输入的参数是:60

--1.2 带返回值的函数
function fun2(num1,num2)
  return num1+num2
end

result = fun2(10,20)
print("函数返回值为:"..result)											--output: 30


-- 2.函数直接赋值给一个变量
fun3 = fun2
result2 = fun3(50,60)
print("一个新的变量得到函数的引用 result2 = "..result2) 											--output: 110


-- 3.全局和局部函数

--[[
   1.lua中定义变量默认是全局变量,且在函数内部定义的变量也默认是全局变量
   2.在函数中定义的全局变量,在函数外部照样可以访问
   3.函数可以声明为全局的与局部的,默认是全局的
     ex :
	   local function LocalFunc()
	     [函数体]
	   end
   ]]--
local function fun4()
 print("这是fun4函数")
 num1 = 10 												--Lua规定默认都是全局变量,无论是否定义在语句块中,除非加local关键字
 local num2 = 20 										--局部变量,只能在该语句块中使用
 end

fun4()
print("num1="..num1)									--output: num1=10 [num1是全局变量]
--print("num2="..num2)								 	--Error


--4.函数的多返回数值特性

--[[
   1.一个函数返回多个数值,可以使用多个变量直接接收.
    eg :
         function GetNum()
		     return 100,200
		 end
	  num1,num2 = GetNum()
	  print(num1,num2)

   2. 返回多个返回值性质
   A: 如果一个函数调用在最后,或者仅有一个表达式,则lua会保留尽可能
多的返回数值,用于匹配
   B: 如果一个函数没有返回值,或者没有足够多的返回数值,那么lua会用
nil来补充失数值.
]]--

function GetNumber()
  return 10,20,100
end

num1 ,num2,num3 = GetNumber()
print(num1,num2,num3)


--5.函数作为参数进行赋值和调用
--[[

   1.函数可以作为数据进行赋值,也可以作为参数进行传递(相当于C#的委托)

]]--

--5.1 函数作为参数:
function PrintInfo(result3)
  print("计算的结果是:"..result3)
end

  --加法函数
function AddNum(num5,num6,printFun)
 local sum = num5 + num6
  --输出
 printFun(sum)
end

  --减法函数
function SubNum(num7,num8,printFun)
 local sub = num7 + num8
  --输出
 printFun(sub)
end

AddNum(10,20,PrintInfo)



