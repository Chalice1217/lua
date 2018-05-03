--[[
-- 1. 不用在末尾加分号
print("asdfasd")

-- 2. 字符串拼接用 ..
print("你好" .. "lua")

-- 3. lua字符串格式化
a = 'aadsdf\"'
print(string.format("%q",a))
]]--
-- 4. --[[ ]]-- 多行注释

-- 5. 六种基本数据类型(nil,number,string,boolean,table,function)
--[[
m_Name = "国帅"
m_Age = 23
m_Score = 429.5
m_isFinish = false
print(m_Name.."年龄"..m_Age.."考了"..m_Score.."分")

-- 5.1 lua中数组下标从1开始
m_Array = {23,"嘿嘿",45.23,true}

-- 5.2 lua不报错,只报nil
print(m_Array[0]) -- nil
print(m_Array[1]) -- 23

-- 5.3 数据类型
print(type(m_Age)) --number
print(type(m_Name)) -- string
print(type(m_Array)) -- table
print(type(m_isFinish)) --boolean
--print(type(m_isFin)) -- nil

-- 5.4 function
m_Fun = function()
print("哈哈哈")
end

print(m_Fun()) -- 哈哈哈

-- 5.5 局部变量 加 local关键字,在方法体里用完就干掉了
function LocalFun()
local age = 24
return age *2
end

print(LocalFun()) -- 48

if true then
local name = "局部变量name"
print(name)
end

print(name) -- nil , 因为只在上面可以用

]]--



-- 6. 运算符
--[[
-- 6.1七种算数运算符(+,-,*,/,%,^,-(取负)),没有++,--等
num1 = 23
num2 = 3
jia = num1 + num2
jian = num1 - num2
cheng = num1 * num2
chu = num1 / num2
yu = num1 % num2
print(jia,jian,cheng,chu,yu)

-- 6.2 六种关系运算符(<,>,<=,>=,==,~=(不等于))
print(num1 == num2) -- false
a = num1 == num2
print(a) -- false
print(num1 ~= num2) -- true
--print(a = num1 == num2) --nil ,不能这样连着写

-- 逻辑运算符(and , or , not ),不是&&,||,!
print((num1 < num2) and (num1 > num2)) --false
print(not a) -- true

-- 其他运算符 ..(字符串拼接) , #(一元运算符,返回字符串或者表的长度)
Astr = "guoshuai.lua"
TempStr = "ming.shuai"
print(#Astr,#TempStr) -- 12,10
]]--

-- 7. 条件运算符
--[[
-- 7.1 if end

-- 7.2 if then else end
if 3 < 8 then
print("3果然小于8")
else
print("3果然大于8")
end

if 8 > 12 then
print("8果然小于12")
   else if 30 > 7 then
   print("30果然大于7")
   end
print(666)
end

-- 7.3 if then end
if 5 < 10 then
print("5果然小于10")
end
]]--

-- 8. 三大循环结构
--[[
-- 8.1 while do end
-- 打印1-10
local index =1
while index <= 10 do
print(index)
index = index +1 -- 没有index++
end

-- 1-100求和
local num =1
local sum =0
while num <= 100 do
sum = sum + num
num = num +1
end
print(sum) -- 5050

-- 1-100奇数和
local num2 =1
local sum2 =0
while num2 <= 100 do
 if num2 % 2 ==1 then
 sum2 = sum2 + num2
 end
 num2 = num2 +1
end
print(sum2)

-- 8.2 repeat until
-- 打印1-10
i = 1
repeat
print(i)
i = i +1
until i > 10

-- 8.3 for do end
-- 1-100偶数和
b = 1
sun = 0
for b =1,100 do
 if b % 2 == 0 then
 sun = sun + b
 end
 b = b +1
 end
 print(sun)

]]--

-- 9. 数组
--[[
-- Lua中数组是动态的,可动态增加和减少长度
-- 索引值只要是整数就可以(可正可负)

-- 9.1 一维数组
m_Arr= {12,26,15,25,11,54,884,494}
m_Arr[2] = 998
m_Arr[0] = 22
m_Arr[-1] = 10
m_Arr[9] = 55
print(#m_Arr)

local ii = -1
for ii = -1 ,#m_Arr do
 print(m_Arr[ii]) -- 10,22,12,998,15...
end

array = {"国帅","大牛"}
for i=-2,2 do
print (array[i]) -- nil nil nil "国帅""大牛"
end

-- 9.2 多维数组
-- 初始化数组
array={}
for i=1,3 do
   array[i] = {}
    for j =1 ,3 do
	   array[i][j] = i * j
	end
end

-- 访问数组
for i=1,3 do
  for j=1,3 do
   print(array[i][j])
   end
   print("---")
end

]]--

-- 10. table(类似于字典)
--[[
m_MyTable = {}
m_MyTable[1] = "lua"
m_MyTable["666"] = "666lua"
print("m_MyTable 索引为1的元素是".. m_MyTable[1])
print("m_MyTable 索引为666的元素是".. m_MyTable["666"])

youTable = m_MyTable
print("youTable 索引为1的元素是".. youTable[1])
print("youTable 索引为666的元素是".. youTable["666"])

youTable = {}
print("m_MyTable 索引为1的元素是".. m_MyTable[1])
print("m_MyTable 索引为666的元素是".. m_MyTable["666"])

-- 10.1 concat
nima = {"王尼玛","熊小妹","熊悠悠","熊孩子"}

--返回table 连接后的字符串[只能连接数组,不能连接键值对]
print("连接后的字符串:".. table.concat(nima)) --王尼玛熊小妹熊悠悠熊孩子

-- 指定连接字符
print("连接后的字符串:",table.concat(nima,",*")) --王尼玛,*熊小妹,*熊悠悠,*熊孩子

-- 指定索引连接 table
print("连接后的字符串:".. table.concat(nima,",+",2,3)) --熊小妹,+熊悠悠


-- 10.2 增删改查
-- table.insert()
table.insert(nima,2,"熊皮皮")
print(nima[2])--熊皮皮

-- table.remove 第二个参数不写的话默认移除最后一位
table.remove(nima,2)
print(nima[2]) --熊小妹

nima[1] = "嘿嘿"
print(nima[1])--嘿嘿

print("最大值是:".. nima[table.maxn(nima)]) -- table.maxn(nima)表里最大的ASCII对应的值

table.sort(nima) -- 排序

for i= 1,#nima do
print(nima[i]) --嘿嘿 熊孩子 熊小妹 熊悠悠
end

]]--

-- 11. 方法

--[[
CaculateClass = {}
local this = CaculateClass
CaculateClass.m_Name = "老王"
function CaculateClass.MyPlus(numA,numB)
 return numA + numB
 end
 print("MyPlus的运算结果是:" .. CaculateClass.MyPlus(50,40))

 function CaculateClass.MyMax(A,B,C)
  return math.max(A,B,C)
end
print("MyMax的运算结果是:".. CaculateClass.MyMax(2,5,1))

function CaculateClass.MM()
 print(this.m_Name)
 end
print(CaculateClass.MM())

]]--


-- 12. 委托
DelegateClass = {}
this = DelegateClass
DelegateClass.Print = function(str)
 print(str)
end

DelegateClass.TestMethod = function(num1,num2,PrintFunc)
local num =num1 *num2
PrintFunc(num .."将方法作为参数传递进去")
end

DelegateClass.TestMethod(11,10,DelegateClass.Print)
