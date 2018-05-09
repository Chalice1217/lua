
 -- 表(table)

--[[
   1.Table是lua的一种数据结构,用来帮助我们创建不同的数据类型,
eg: 数组,字典等.

   2.lua(数组)的基本特征与定义:
  lua(数组)的下标可以是负数
  lua 的长度可以动态改变(与C#的固定长度数组不同),
可以把lua数组认为是C#的List,Dictionary等集合类型.
  
 3.把table当成一个"字典"集合来对待. 也可以当成一个"数组"来对待,
这要看如何来初始化表.
]]--

 --2.1表的定义:

--[[
   1. table集合,可以有"空表","直接声明且定义表内容",
"声明表然后逐一赋值"等三种方式.
   2. table集合, 也可以定义成类似"数组"的定义方式,其访问可以
使用下标进行访问.(注意: lua中没有数组的概念,就是
表来表示)
   3. 访问table中数据("键值对"类型的集合),可以直接用 "." 符号访问,
也可以用 "中括号"访问,但一定要加双引号!
   4. table中的索引,都是从1开始的.

]]--
tableArr = {}
 -- 输出:
print(tableArr) 					--table: 02A175B8
 --表的赋值:
 tableArr = {1,2,5,"老王"}
 print(tableArr[0])					--nil[下标从1开始]
 print(tableArr[1])					--1
 print(tableArr[2])					--2
 print(tableArr[3])					--5
 print(tableArr[4])					--"老王"

 --3.2"数组"类型表的定义:
ArrTable = {10,20,30,40}
 print(ArrTable[1])

 --3.3"键值对"类型表的定义
kvTable = {str1 = "老王",str2 = "嘿嘿",str3 = "吼吼"}
 --输出"键值对"类型表的两种方式:
 print(kvTable["str1"])
 print(kvTable.str2)
  











