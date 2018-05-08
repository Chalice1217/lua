--3 数据类型、三大运算符、多重赋值、全局变量和局部变量

--3.1 六种常用数据类型(前6个)
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

print("nil数据类型是:"..type(nil))       					--nil数据类型是:nil
print("boolean据类型是:"..type(false))						--boolean据类型是:boolean
print("string数据类型是:"..type("老铁")) 					--string数据类型是:string
print("number数据类型是:"..type(6666))						--number数据类型是:number
print("table数据类型是:"..type({10,20,"没毛病"}))   		--table数据类型是:table

function fun1()
  print("Lua函数")
end
print("function数据类型是:"..type(fun1)) 					--function数据类型是:function


--3.2 三大运算符
--[[

   1.算数运算符 : +  -  *  /  %  ^ (Lua没有 ++ --)
   2.关系运算符 : <  <=  >  >=  ==  ~=
   3.逻辑运算符 : and or not
   注 :
   1.1. lua中没有自增自减运算符(++ --)

   2.1. nil 只与自身相等;
   2.2.对于table, 函数,userdata , lua 是作引用比较的. 即:
只有当他们引用同一对象时,才认为他们相等 ;

   3.1. 所有逻辑操作符将false,nil视为假 , 其他都为真.
   3.2. 对于操作符"and"来说: 如果它的第一个操作数为假,就返回第一个操作数,
不然返回第二个操作数(有假则假,全真则真)
   3.3. 对于操作符"or"来说: 如果如果它的第一个操作数为真,就返回第一个操作数,
不然返回第二个操作数(有真则真,全假则假)
   3.4. "短路规则" : and 逻辑"假"短路规则(3.2) , or 逻辑"真"短路规则(3.3)

]]--

--3.2.1 算数运算符:
num1 = 10;
num2 = 2;
res1 = num1 + num2 											--output: 12
res2 = num1 - num2											--output: 8
res3 = num1 * num2											--output: 20
res4 = num1 / num2											--output: 5
res5 = num1 % num2											--output: 0
res6 = num1 ^ num2											--output: 100
print("'加','减','乘','除','取余','次幂'分别输出结果为:"..res1,res2,
res3,res4,res5,res6)

--3.2.2 关系运算符:
print("num1 > num2:"..tostring(num1>num2)) 					--output: true
print("num1 >= num2:"..tostring(num1>=num2))				--output: true
print("num1 < num2:"..tostring(num1<num2))					--output: false
print("num1 <= num2:"..tostring(num1<=num2))				--output: false
print("num1 == num2:"..tostring(num1==num2))				--output: false
print("num1 ~= num2:"..tostring(num1~=num2))				--output: true

--3.2.3 逻辑运算符:[and:有假则假; or:有真则真]
num3 = 8
print(num1 > num2 and num2 > num3) 							--output: false
print(num1 > num2 or num2 > num3) 							--output: ture
print(not (num1 > num2))									--output: false

--针对带有'数字'和'字符串'的逻辑判断
print("针对带有'数字'和'字符串'的逻辑判断")
print(not(nil)) 											--output: true
print(not(false))											--output: true
print(not("你猜我是真还是假"))								--output: false
print(not("123")) 											--output: false

--需要进行"短路规则"判断的例子(参考3.2,3.3)
--and :如果它的第一个操作数为假,就返回第一个操作数,不然返回第二个操作数
--or  :如果它的第一个操作数为真,就返回第一个操作数,不然返回第二个操作数
print(10 and 20)											--output: 20
print(nil and 20)											--output: nil
print(false and 66)											--output:false
print(2 or 5) 												--output:2
print(false or 20)											--output:20
print("你好" or 20)											--output:"你好"
print("你好"and 20)											--output:20


--3.3 多重赋值
--[[

   1.lua可以给多个变量同时赋值
eg:num1,num2,num3 = 1,2,3
   2.lua可以进行多重赋值
lua总是将等号右边值的个数调整到与左边变量个数相一致的情况
   3.规则 :
如果值的个数少于变量个数,那么多余的变量会被赋值nil
如果值的个数多于变量个数,那么多余的值会被忽略

]]--

--3.3.1 普通多重赋值(变量个数 == 值个数)
num1,num2,num3 = 1,5,12
print(num1,num2,num3) 										--output: 1  5  12

--3.3.2 变量个数 > 值个数
num1,num2,num3 = 1,5
print(num1,num2,num3)										--output: 1  5  nil

--3.3.3 变量个数 < 值个数
num1,num2,num3 = 1,2,4,5
print(num1,num2,num3)										--output: 1  2  4


--3.4 全局变量和局部变量
--[[

   1.lua变量默认是全局变量,定义局部变量需要用关键字local修饰
   2.lua语句块(if , for等)与函数中,定义的默认也都是全局变量
   3.lua中也可以直接使用 do ... end 来定义一个语句块
eg :
	 do
		local a = 100
		local b = 50
	 end
	4.如果你要删除一个全局变量,只需要给变量赋值nil即可
eg :
     b = 10
     print(b)
	 b =nil

]]--

if(true) then
local lc = 5
print("局部变量lc的值为:"..lc) 								--局部变量lc的值为:5
end
--print("局部变量lc的值为:"..lc) 							--Error , lc是局部变量,在语句块之外为nil


--在独立的语句块定义变量
do
 local la = 50
 print("在语句块内显示局部变量la:".. la)
end

--print("在语句块外显示局部变量la:".. la)					--Error


