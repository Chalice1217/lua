--[[
-- 1. ������ĩβ�ӷֺ�
print("asdfasd")

-- 2. �ַ���ƴ���� ..
print("���" .. "lua")

-- 3. lua�ַ�����ʽ��
a = 'aadsdf\"'
print(string.format("%q",a))
]]--
-- 4. --[[ ]]-- ����ע��

-- 5. ���ֻ�����������(nil,number,string,boolean,table,function)
--[[
m_Name = "��˧"
m_Age = 23
m_Score = 429.5
m_isFinish = false
print(m_Name.."����"..m_Age.."����"..m_Score.."��")

-- 5.1 lua�������±��1��ʼ
m_Array = {23,"�ٺ�",45.23,true}

-- 5.2 lua������,ֻ��nil
print(m_Array[0]) -- nil
print(m_Array[1]) -- 23

-- 5.3 ��������
print(type(m_Age)) --number
print(type(m_Name)) -- string
print(type(m_Array)) -- table
print(type(m_isFinish)) --boolean
--print(type(m_isFin)) -- nil

-- 5.4 function
m_Fun = function()
print("������")
end

print(m_Fun()) -- ������

-- 5.5 �ֲ����� �� local�ؼ���,�ڷ�����������͸ɵ���
function LocalFun()
local age = 24
return age *2
end

print(LocalFun()) -- 48

if true then
local name = "�ֲ�����name"
print(name)
end

print(name) -- nil , ��Ϊֻ�����������

]]--



-- 6. �����
--[[
-- 6.1�������������(+,-,*,/,%,^,-(ȡ��)),û��++,--��
num1 = 23
num2 = 3
jia = num1 + num2
jian = num1 - num2
cheng = num1 * num2
chu = num1 / num2
yu = num1 % num2
print(jia,jian,cheng,chu,yu)

-- 6.2 ���ֹ�ϵ�����(<,>,<=,>=,==,~=(������))
print(num1 == num2) -- false
a = num1 == num2
print(a) -- false
print(num1 ~= num2) -- true
--print(a = num1 == num2) --nil ,������������д

-- �߼������(and , or , not ),����&&,||,!
print((num1 < num2) and (num1 > num2)) --false
print(not a) -- true

-- ��������� ..(�ַ���ƴ��) , #(һԪ�����,�����ַ������߱�ĳ���)
Astr = "guoshuai.lua"
TempStr = "ming.shuai"
print(#Astr,#TempStr) -- 12,10
]]--

-- 7. ���������
--[[
-- 7.1 if end

-- 7.2 if then else end
if 3 < 8 then
print("3��ȻС��8")
else
print("3��Ȼ����8")
end

if 8 > 12 then
print("8��ȻС��12")
   else if 30 > 7 then
   print("30��Ȼ����7")
   end
print(666)
end

-- 7.3 if then end
if 5 < 10 then
print("5��ȻС��10")
end
]]--

-- 8. ����ѭ���ṹ
--[[
-- 8.1 while do end
-- ��ӡ1-10
local index =1
while index <= 10 do
print(index)
index = index +1 -- û��index++
end

-- 1-100���
local num =1
local sum =0
while num <= 100 do
sum = sum + num
num = num +1
end
print(sum) -- 5050

-- 1-100������
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
-- ��ӡ1-10
i = 1
repeat
print(i)
i = i +1
until i > 10

-- 8.3 for do end
-- 1-100ż����
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

-- 9. ����
--[[
-- Lua�������Ƕ�̬��,�ɶ�̬���Ӻͼ��ٳ���
-- ����ֵֻҪ�������Ϳ���(�����ɸ�)

-- 9.1 һά����
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

array = {"��˧","��ţ"}
for i=-2,2 do
print (array[i]) -- nil nil nil "��˧""��ţ"
end

-- 9.2 ��ά����
-- ��ʼ������
array={}
for i=1,3 do
   array[i] = {}
    for j =1 ,3 do
	   array[i][j] = i * j
	end
end

-- ��������
for i=1,3 do
  for j=1,3 do
   print(array[i][j])
   end
   print("---")
end

]]--

-- 10. table(�������ֵ�)
--[[
m_MyTable = {}
m_MyTable[1] = "lua"
m_MyTable["666"] = "666lua"
print("m_MyTable ����Ϊ1��Ԫ����".. m_MyTable[1])
print("m_MyTable ����Ϊ666��Ԫ����".. m_MyTable["666"])

youTable = m_MyTable
print("youTable ����Ϊ1��Ԫ����".. youTable[1])
print("youTable ����Ϊ666��Ԫ����".. youTable["666"])

youTable = {}
print("m_MyTable ����Ϊ1��Ԫ����".. m_MyTable[1])
print("m_MyTable ����Ϊ666��Ԫ����".. m_MyTable["666"])

-- 10.1 concat
nima = {"������","��С��","������","�ܺ���"}

--����table ���Ӻ���ַ���[ֻ����������,�������Ӽ�ֵ��]
print("���Ӻ���ַ���:".. table.concat(nima)) --��������С���������ܺ���

-- ָ�������ַ�
print("���Ӻ���ַ���:",table.concat(nima,",*")) --������,*��С��,*������,*�ܺ���

-- ָ���������� table
print("���Ӻ���ַ���:".. table.concat(nima,",+",2,3)) --��С��,+������


-- 10.2 ��ɾ�Ĳ�
-- table.insert()
table.insert(nima,2,"��ƤƤ")
print(nima[2])--��ƤƤ

-- table.remove �ڶ���������д�Ļ�Ĭ���Ƴ����һλ
table.remove(nima,2)
print(nima[2]) --��С��

nima[1] = "�ٺ�"
print(nima[1])--�ٺ�

print("���ֵ��:".. nima[table.maxn(nima)]) -- table.maxn(nima)��������ASCII��Ӧ��ֵ

table.sort(nima) -- ����

for i= 1,#nima do
print(nima[i]) --�ٺ� �ܺ��� ��С�� ������
end

]]--

-- 11. ����

--[[
CaculateClass = {}
local this = CaculateClass
CaculateClass.m_Name = "����"
function CaculateClass.MyPlus(numA,numB)
 return numA + numB
 end
 print("MyPlus����������:" .. CaculateClass.MyPlus(50,40))

 function CaculateClass.MyMax(A,B,C)
  return math.max(A,B,C)
end
print("MyMax����������:".. CaculateClass.MyMax(2,5,1))

function CaculateClass.MM()
 print(this.m_Name)
 end
print(CaculateClass.MM())

]]--


-- 12. ί��
DelegateClass = {}
this = DelegateClass
DelegateClass.Print = function(str)
 print(str)
end

DelegateClass.TestMethod = function(num1,num2,PrintFunc)
local num =num1 *num2
PrintFunc(num .."��������Ϊ�������ݽ�ȥ")
end

DelegateClass.TestMethod(11,10,DelegateClass.Print)
