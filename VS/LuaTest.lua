-- 1.����luanet.dll,lua��C#
-- 3��dll�ļ�����һ�ݷŵ�bin/Debug��
--���������ռ�[using System]
luanet.load_assembly("System")
--ʵ����CLR���� , ָ���������ռ��µ���
Int32 = luanet.import_type("System.Int32")
--ʹ�ø���ķ���������
num = Int32.Parse("666")
print(Int32)
print(num) 


--1. ���������ռ�
luanet.load_assembly("LuaInterface")

--2. ָ���������ռ��µ���
LuaDiaoC = luanet.import_type("LuaInterface.LuaDiaoC")
 
--3. ʵ�����������ֱ�ӵ��þ�̬

--3.1 ʵ��������,�����ֶ�
ld = LuaDiaoC()
print(ld.m_Name .. "Lua����C#��ͨ�ֶ�")

--3.2 ֱ�ӵ��þ�̬�ֶ�
print(LuaDiaoC.m_Name .. "Lua����C#��̬�ֶ�")

--4. Lua����C#����

--4.1 ������ͨ����
ld.TeMethod()

--4.2 ���þ�̬����
LuaDiaoC.StaticMethod()


--5 ���� out �� ref [out�������ref]
 
--5.1 ����out
outVo,outLen = ld.OutMethod("�����out�ؼ���") --outVo �� void ,�÷�������out,������û�з���ֵ,�����з���ֵ,���ܸ�out����
print(outVo,outLen) -- nil , 9

--5.2 ����ref
refVo,refLen = ld.RefMethod("�����ref�ؼ���",100)  --refVo �� void ,�÷�������ref,������û�з���ֵ,�����з���ֵ,����һ��Ҫ��ref����[100��������]
print(refVo,refLen) -- nil , 9

-- 6.���ö������ֵ�ķ���
str,a,b,c =  ld.ParamsMethod(100)
print(str,a,b,c) --�������ֵ,3.14,666,�������ֵ,nil