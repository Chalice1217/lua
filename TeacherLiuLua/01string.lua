--1. ��ʾ�������� type
str1 = "�ַ���"
str2 = 34
str3 = false
print(type(str1).."--"..type(str2).."--"..type(str3))
--string--number--boolean

--2. �ַ���
--[[

   1.�ַ���,����ʹ�õ����Ż�˫����;
   2.������������[[]] ��ʾ�����ַ���;
   3.�ַ�������ʱ�� ".." ;
   4.�ַ����� "+" ������ʱ , ���Զ�ת��Ϊ number ���ʹ���(������
��֤�� "�����ַ���" , ����ᱨ��)
   5.�ַ�������ֵ������ ".." ����,һ��û������,���ᱨ��. ������ֵ
�������Ϊnil�Ļ�,�Ƽ���tostring()����


]]--
--2.1 �����ַ���[[]]
str = 'ICBC'
strMultiLine = [[
<html>
 wwww.baidu.com
</html>
]]
print(strMultiLine)

--2.2 �ַ������� ..
str1 = "����"
str2 = "ûë��"
print(str1..str2) 							--����ûë��
--2.2.1 �ַ���ת��(��"+"�Ļ�,���Զ�ת��Ȼ������+)
str1 = "6.6"
str2 = "30"
print(str1 + str2) 							--36.6
print(10+"6.6") 							--16.6

--2.3 ȡ���ַ������� #
str1 = "acbaksa"
print(#str1)								--7
str2 = "�ٺٺ�"
print(#str2) 								--6(һ�����������ַ�)

--2.4 �ַ�������ֵ���໥ת��
--2.4.1 tonumber()
str1 = "888"
str2 = "666"
result1 = str1 - str2
print("�Զ�ת��result1 =" ..result1) 		--222

result2 = tonumber(str1) - str2
print("��ʾת��result2 =" ..result2) 		--222

--2.4.2 toString()
str1 = "Ϊ�˲���"
str2 = 555
result3 = str1 .. str2
print("�Զ�ת��:"..result3)					--Ϊ�˲���555

result4 = str1 .. tostring(str2)
print("��ʾת��:"..result4) 				--Ϊ�˲���555

--2.4.3 �����õ�tostring()�ĳ���1
numArr = {12,15,6}
--print("�������:"..numArr) 				--Error,�����Զ�ת��Ϊ�ַ���
print("�������:"..tostring(numArr)) 		--�������:table: 02B59500

--2.4.4 �����õ�tostring()�ĳ���2
num = nil
--print("num = ".. num) 					--Error
print("num = ".. tostring(num))				--num = nil

--3 ��������
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


