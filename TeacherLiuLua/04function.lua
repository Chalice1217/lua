
-- ����

--[[

   1. �����Ķ���
   2. ����ֱ�Ӹ�ֵ��һ������
   3. ȫ�ֺ;ֲ�����
   4. �����Ķ෵����ֵ����
   5. ������Ϊ�������и�ֵ�͵���
]]--



-- 1.�����Ķ���

--[[

   1.�����Ķ����ʽ :
     function funName(param1,parma2,...)
        [������]
	 end

   2. Lua������������ :
    A: �������趨�巵������,���Է�������������������������ֵ
	B: �����Ĳ���,���趨���������
	C: �������������
	D: ���Զ������,�Ѻ���ֱ�Ӹ�ֵ����,�Ӷ������ͬ����

]]--

--1.1����һ������ :
function fun1(num1)
  print("����Ĳ�����:"..num1)
end

-- ���ú��� :
fun1(60)												--����Ĳ�����:60

--1.2 ������ֵ�ĺ���
function fun2(num1,num2)
  return num1+num2
end

result = fun2(10,20)
print("��������ֵΪ:"..result)											--output: 30


-- 2.����ֱ�Ӹ�ֵ��һ������
fun3 = fun2
result2 = fun3(50,60)
print("һ���µı����õ����������� result2 = "..result2) 											--output: 110


-- 3.ȫ�ֺ;ֲ�����

--[[
   1.lua�ж������Ĭ����ȫ�ֱ���,���ں����ڲ�����ı���ҲĬ����ȫ�ֱ���
   2.�ں����ж����ȫ�ֱ���,�ں����ⲿ�������Է���
   3.������������Ϊȫ�ֵ���ֲ���,Ĭ����ȫ�ֵ�
     ex :
	   local function LocalFunc()
	     [������]
	   end
   ]]--
local function fun4()
 print("����fun4����")
 num1 = 10 												--Lua�涨Ĭ�϶���ȫ�ֱ���,�����Ƿ�����������,���Ǽ�local�ؼ���
 local num2 = 20 										--�ֲ�����,ֻ���ڸ�������ʹ��
 end

fun4()
print("num1="..num1)									--output: num1=10 [num1��ȫ�ֱ���]
--print("num2="..num2)								 	--Error


--4.�����Ķ෵����ֵ����

--[[
   1.һ���������ض����ֵ,����ʹ�ö������ֱ�ӽ���.
    eg :
         function GetNum()
		     return 100,200
		 end
	  num1,num2 = GetNum()
	  print(num1,num2)

   2. ���ض������ֵ����
   A: ���һ���������������,���߽���һ�����ʽ,��lua�ᱣ��������
��ķ�����ֵ,����ƥ��
   B: ���һ������û�з���ֵ,����û���㹻��ķ�����ֵ,��ôlua����
nil������ʧ��ֵ.
]]--

function GetNumber()
  return 10,20,100
end

num1 ,num2,num3 = GetNumber()
print(num1,num2,num3)


--5.������Ϊ�������и�ֵ�͵���
--[[

   1.����������Ϊ���ݽ��и�ֵ,Ҳ������Ϊ�������д���(�൱��C#��ί��)

]]--

--5.1 ������Ϊ����:
function PrintInfo(result3)
  print("����Ľ����:"..result3)
end

  --�ӷ�����
function AddNum(num5,num6,printFun)
 local sum = num5 + num6
  --���
 printFun(sum)
end

  --��������
function SubNum(num7,num8,printFun)
 local sub = num7 + num8
  --���
 printFun(sub)
end

AddNum(10,20,PrintInfo)



