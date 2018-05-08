--3 �������͡���������������ظ�ֵ��ȫ�ֱ����;ֲ�����

--3.1 ���ֳ�����������(ǰ6��)
--[[

   1. nil��ʾ������,��ͬC#��null
   2. boolean ��������
   3. string �ַ�������,������˫���ž���
   4. number ��ֵ����,lua����������,��ͬ��C#��Double
   5. table ��ʾһ������,�±�� "1" ��ʼ (luaû��class�ĸ���,lua
������������"��"ʵ�ֵ�)
   6. function ����,��ͬ��C#����
   7. userdata ��ʾ����洢�ڱ����е�C��������
   8. thread ��ʾִ�еĶ����߳�(������ "α���߳�" , ��Э�̵ĸ���),
����ִ��Эͬ����

]]--

print("nil����������:"..type(nil))       					--nil����������:nil
print("boolean��������:"..type(false))						--boolean��������:boolean
print("string����������:"..type("����")) 					--string����������:string
print("number����������:"..type(6666))						--number����������:number
print("table����������:"..type({10,20,"ûë��"}))   		--table����������:table

function fun1()
  print("Lua����")
end
print("function����������:"..type(fun1)) 					--function����������:function


--3.2 ���������
--[[

   1.��������� : +  -  *  /  %  ^ (Luaû�� ++ --)
   2.��ϵ����� : <  <=  >  >=  ==  ~=
   3.�߼������ : and or not
   ע :
   1.1. lua��û�������Լ������(++ --)

   2.1. nil ֻ���������;
   2.2.����table, ����,userdata , lua �������ñȽϵ�. ��:
ֻ�е���������ͬһ����ʱ,����Ϊ������� ;

   3.1. �����߼���������false,nil��Ϊ�� , ������Ϊ��.
   3.2. ���ڲ�����"and"��˵: ������ĵ�һ��������Ϊ��,�ͷ��ص�һ��������,
��Ȼ���صڶ���������(�м����,ȫ������)
   3.3. ���ڲ�����"or"��˵: ���������ĵ�һ��������Ϊ��,�ͷ��ص�һ��������,
��Ȼ���صڶ���������(��������,ȫ�����)
   3.4. "��·����" : and �߼�"��"��·����(3.2) , or �߼�"��"��·����(3.3)

]]--

--3.2.1 ���������:
num1 = 10;
num2 = 2;
res1 = num1 + num2 											--output: 12
res2 = num1 - num2											--output: 8
res3 = num1 * num2											--output: 20
res4 = num1 / num2											--output: 5
res5 = num1 % num2											--output: 0
res6 = num1 ^ num2											--output: 100
print("'��','��','��','��','ȡ��','����'�ֱ�������Ϊ:"..res1,res2,
res3,res4,res5,res6)

--3.2.2 ��ϵ�����:
print("num1 > num2:"..tostring(num1>num2)) 					--output: true
print("num1 >= num2:"..tostring(num1>=num2))				--output: true
print("num1 < num2:"..tostring(num1<num2))					--output: false
print("num1 <= num2:"..tostring(num1<=num2))				--output: false
print("num1 == num2:"..tostring(num1==num2))				--output: false
print("num1 ~= num2:"..tostring(num1~=num2))				--output: true

--3.2.3 �߼������:[and:�м����; or:��������]
num3 = 8
print(num1 > num2 and num2 > num3) 							--output: false
print(num1 > num2 or num2 > num3) 							--output: ture
print(not (num1 > num2))									--output: false

--��Դ���'����'��'�ַ���'���߼��ж�
print("��Դ���'����'��'�ַ���'���߼��ж�")
print(not(nil)) 											--output: true
print(not(false))											--output: true
print(not("��������滹�Ǽ�"))								--output: false
print(not("123")) 											--output: false

--��Ҫ����"��·����"�жϵ�����(�ο�3.2,3.3)
--and :������ĵ�һ��������Ϊ��,�ͷ��ص�һ��������,��Ȼ���صڶ���������
--or  :������ĵ�һ��������Ϊ��,�ͷ��ص�һ��������,��Ȼ���صڶ���������
print(10 and 20)											--output: 20
print(nil and 20)											--output: nil
print(false and 66)											--output:false
print(2 or 5) 												--output:2
print(false or 20)											--output:20
print("���" or 20)											--output:"���"
print("���"and 20)											--output:20


--3.3 ���ظ�ֵ
--[[

   1.lua���Ը��������ͬʱ��ֵ
eg:num1,num2,num3 = 1,2,3
   2.lua���Խ��ж��ظ�ֵ
lua���ǽ��Ⱥ��ұ�ֵ�ĸ�������������߱���������һ�µ����
   3.���� :
���ֵ�ĸ������ڱ�������,��ô����ı����ᱻ��ֵnil
���ֵ�ĸ������ڱ�������,��ô�����ֵ�ᱻ����

]]--

--3.3.1 ��ͨ���ظ�ֵ(�������� == ֵ����)
num1,num2,num3 = 1,5,12
print(num1,num2,num3) 										--output: 1  5  12

--3.3.2 �������� > ֵ����
num1,num2,num3 = 1,5
print(num1,num2,num3)										--output: 1  5  nil

--3.3.3 �������� < ֵ����
num1,num2,num3 = 1,2,4,5
print(num1,num2,num3)										--output: 1  2  4


--3.4 ȫ�ֱ����;ֲ�����
--[[

   1.lua����Ĭ����ȫ�ֱ���,����ֲ�������Ҫ�ùؼ���local����
   2.lua����(if , for��)�뺯����,�����Ĭ��Ҳ����ȫ�ֱ���
   3.lua��Ҳ����ֱ��ʹ�� do ... end ������һ������
eg :
	 do
		local a = 100
		local b = 50
	 end
	4.�����Ҫɾ��һ��ȫ�ֱ���,ֻ��Ҫ��������ֵnil����
eg :
     b = 10
     print(b)
	 b =nil

]]--

if(true) then
local lc = 5
print("�ֲ�����lc��ֵΪ:"..lc) 								--�ֲ�����lc��ֵΪ:5
end
--print("�ֲ�����lc��ֵΪ:"..lc) 							--Error , lc�Ǿֲ�����,������֮��Ϊnil


--�ڶ��������鶨�����
do
 local la = 50
 print("����������ʾ�ֲ�����la:".. la)
end

--print("����������ʾ�ֲ�����la:".. la)					--Error


