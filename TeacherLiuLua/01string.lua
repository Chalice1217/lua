--1. 显示变量类型 type
str1 = "字符串"
str2 = 34
str3 = false
print(type(str1).."--"..type(str2).."--"..type(str3))
--string--number--boolean

--2. 字符串
--[[

   1.字符串,可以使用单引号或双引号;
   2.用两个方括号[[]] 表示多行字符串;
   3.字符串连接时用 ".." ;
   4.字符串用 "+" 号连接时 , 会自动转换为 number 类型处理(但必须
保证是 "数字字符串" , 否则会报错)
   5.字符串与数值类型用 ".." 连接,一般没有问题,不会报错. 但是数值
类型如果为nil的话,推荐用tostring()函数


]]--
--2.1 多行字符串[[]]
str = 'ICBC'
strMultiLine = [[
<html>
 wwww.baidu.com
</html>
]]
print(strMultiLine)

--2.2 字符串连接 ..
str1 = "老铁"
str2 = "没毛病"
print(str1..str2) 							--老铁没毛病
--2.2.1 字符串转换(用"+"的话,会自动转换然后运算+)
str1 = "6.6"
str2 = "30"
print(str1 + str2) 							--36.6
print(10+"6.6") 							--16.6

--2.3 取得字符串长度 #
str1 = "acbaksa"
print(#str1)								--7
str2 = "嘿嘿嘿"
print(#str2) 								--6(一个汉字两个字符)

--2.4 字符串与数值型相互转换
--2.4.1 tonumber()
str1 = "888"
str2 = "666"
result1 = str1 - str2
print("自动转换result1 =" ..result1) 		--222

result2 = tonumber(str1) - str2
print("显示转化result2 =" ..result2) 		--222

--2.4.2 toString()
str1 = "为了部落"
str2 = 555
result3 = str1 .. str2
print("自动转换:"..result3)					--为了部落555

result4 = str1 .. tostring(str2)
print("显示转换:"..result4) 				--为了部落555

--2.4.3 必须用到tostring()的场合1
numArr = {12,15,6}
--print("表的内容:"..numArr) 				--Error,表不能自动转换为字符串
print("表的内容:"..tostring(numArr)) 		--表的内容:table: 02B59500

--2.4.4 必须用到tostring()的场合2
num = nil
--print("num = ".. num) 					--Error
print("num = ".. tostring(num))				--num = nil

--3 数据类型
--[[

   1. nil表示空数据,等同C#的null
   2. boolean 布尔类型
   3. string 字符串类型,单引号双引号均可
   4. number 数值类型,lua无整数类型,等同于C#中Double
   5. table 表示一个集合,下标从 "1" 开始 (lua没有class的概念,lua
面向对象就是用"表"实现的)
   6. function 函数,等同于C#方法
   7. userdata 表示任意存储在变量中的C数据类型
   8. thread 表示执行的独立线程(本质是 "伪多线程" , 是协程的概念),
用于执行协同程序

]]--


