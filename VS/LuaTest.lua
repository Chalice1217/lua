-- 1.引入luanet.dll,lua调C#
-- 3个dll文件复制一份放到bin/Debug下
--引入命名空间[using System]
luanet.load_assembly("System")
--实例化CLR对象 , 指定该命名空间下的类
Int32 = luanet.import_type("System.Int32")
--使用该类的方法和属性
num = Int32.Parse("666")
print(Int32)
print(num) 


--1. 引入命名空间
luanet.load_assembly("LuaInterface")

--2. 指定该命名空间下的类
LuaDiaoC = luanet.import_type("LuaInterface.LuaDiaoC")
 
--3. 实例化对象或者直接调用静态

--3.1 实例化对象,调用字段
ld = LuaDiaoC()
print(ld.m_Name .. "Lua调用C#普通字段")

--3.2 直接调用静态字段
print(LuaDiaoC.m_Name .. "Lua调用C#静态字段")

--4. Lua调用C#方法

--4.1 调用普通方法
ld.TeMethod()

--4.2 调用静态方法
LuaDiaoC.StaticMethod()


--5 调用 out 和 ref [out是特殊的ref]
 
--5.1 调用out
outVo,outLen = ld.OutMethod("这个是out关键字") --outVo 是 void ,该方法带了out,不管有没有返回值,都会有返回值,不能给out参数
print(outVo,outLen) -- nil , 9

--5.2 调用ref
refVo,refLen = ld.RefMethod("这个是ref关键字",100)  --refVo 是 void ,该方法带了ref,不管有没有返回值,都会有返回值,但是一定要给ref参数[100是随便给的]
print(refVo,refLen) -- nil , 9

-- 6.调用多个返回值的方法
str,a,b,c =  ld.ParamsMethod(100)
print(str,a,b,c) --多个返回值,3.14,666,多个返回值,nil