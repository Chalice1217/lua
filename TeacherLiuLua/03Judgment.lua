--4.lua语言流程控制语句
--[[

   1.if判断语句
      单分支语句
	  双分支语句
	  多分支语句
   2.while循环语句
   3.repeat 循环语句
   4.for 循环语句
   5.ipairs和pairs迭代器
   6.break关键字(lua中没有continue)
]]--

--4.1 if语句

--4.1.1 单分支语句
if (true) then
 print("if单分支语句")								--output: if单分支语句
end

--4.1.2 双分支语句
num1 = 100;
num2 = 200
if(num1 > num2) then
 print("num1大于num2")
else
 print("num1小于num2")
end

--4.1.3 多分支语句[求最大值]
num3 = 300
if num1 > num2 then
 if num1 > num3 then
  print("num1最大")
  else
  print ("num2最大")
  end
 elseif num2 > num3 then
  print ("num2最大")
  else
  print("num3最大")
end


--4.2 while do end [先判断,后循坏]
-- 循环输出1-10
i = 1
while i <= 10 do
 print(i)
 i = i+1
end

--1-10偶数求和
i = 1
sum = 0
while (i <= 10) do
  if (i%2==0) then
   sum = sum + i
  end
   i = i+1
 end
print(sum)


--4.3 repeat until [先循环一次,后判断] (比while多走一次)
-- 循环输出1-10
i = 1
repeat
 print(i)
 i = i+1
until i > 10

-- 1-10 偶数求和
i=1
sum =0
repeat
 if (i%2==0) then
   sum = sum +i
  end
i = i +1
until i > 10
print(sum)


--4.4 for do end

--4.4.1 升序
for i=8,16 do
 print("for循环升序次数:"..i)
end

--4.4.2 降序(第三个参数)
for j=16,8,-1 do
  print("for循环降序次数:"..j)
end

--1-100求和
for i=1,100 do
 if (i%2==0)  then
  sum = sum + i
 end
  i = i +1
end
print(sum)
--4.5 迭代器
--[[

   1.for循环分为 数值循环, 泛型循环(foreach)
   2.ipairs 遍历顺序的集合.(中间序号不能中断,遇到nil数值就会停止.
一般用于数组类型集合的遍历.)
   3.pairs 遍历集合中所有数据.(序号可以中断,
一般用于键值对类型集合的遍历.)
   4.泛型循环定义:
      for 变量列表 in 迭代函数 do
	     [循环体]
	  end

]]--

--4.5.1 ipairs
--泛型for循环
myArr = {10,20,30,50,80,6,8,12}
for k,v in ipairs(myArr) do
  print(k.."--"..v)
end

--4.5.2 pairs
--定义循环输出具备"键值对"集合的数据,必须使用pairs关键字
myArr = {num1="老铁",num2="双击666",num3 = "没毛病"}
for k,v in pairs(myArr) do
 print(k.."*****"..v)
end

--4.6 break关键字

-- 输出1-1000,遇到10就停止
for i=1,10 do
  if (i>10) then
  break
  end
  print(i)
end

