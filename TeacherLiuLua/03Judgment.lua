--4.lua�������̿������
--[[

   1.if�ж����
      ����֧���
	  ˫��֧���
	  ���֧���
   2.whileѭ�����
   3.repeat ѭ�����
   4.for ѭ�����
   5.ipairs��pairs������
   6.break�ؼ���(lua��û��continue)
]]--

--4.1 if���

--4.1.1 ����֧���
if (true) then
 print("if����֧���")								--output: if����֧���
end

--4.1.2 ˫��֧���
num1 = 100;
num2 = 200
if(num1 > num2) then
 print("num1����num2")
else
 print("num1С��num2")
end

--4.1.3 ���֧���[�����ֵ]
num3 = 300
if num1 > num2 then
 if num1 > num3 then
  print("num1���")
  else
  print ("num2���")
  end
 elseif num2 > num3 then
  print ("num2���")
  else
  print("num3���")
end


--4.2 while do end [���ж�,��ѭ��]
-- ѭ�����1-10
i = 1
while i <= 10 do
 print(i)
 i = i+1
end

--1-10ż�����
i = 1
sum = 0
while (i <= 10) do
  if (i%2==0) then
   sum = sum + i
  end
   i = i+1
 end
print(sum)


--4.3 repeat until [��ѭ��һ��,���ж�] (��while����һ��)
-- ѭ�����1-10
i = 1
repeat
 print(i)
 i = i+1
until i > 10

-- 1-10 ż�����
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

--4.4.1 ����
for i=8,16 do
 print("forѭ���������:"..i)
end

--4.4.2 ����(����������)
for j=16,8,-1 do
  print("forѭ���������:"..j)
end

--1-100���
for i=1,100 do
 if (i%2==0)  then
  sum = sum + i
 end
  i = i +1
end
print(sum)
--4.5 ������
--[[

   1.forѭ����Ϊ ��ֵѭ��, ����ѭ��(foreach)
   2.ipairs ����˳��ļ���.(�м���Ų����ж�,����nil��ֵ�ͻ�ֹͣ.
һ�������������ͼ��ϵı���.)
   3.pairs ������������������.(��ſ����ж�,
һ�����ڼ�ֵ�����ͼ��ϵı���.)
   4.����ѭ������:
      for �����б� in �������� do
	     [ѭ����]
	  end

]]--

--4.5.1 ipairs
--����forѭ��
myArr = {10,20,30,50,80,6,8,12}
for k,v in ipairs(myArr) do
  print(k.."--"..v)
end

--4.5.2 pairs
--����ѭ������߱�"��ֵ��"���ϵ�����,����ʹ��pairs�ؼ���
myArr = {num1="����",num2="˫��666",num3 = "ûë��"}
for k,v in pairs(myArr) do
 print(k.."*****"..v)
end

--4.6 break�ؼ���

-- ���1-1000,����10��ֹͣ
for i=1,10 do
  if (i>10) then
  break
  end
  print(i)
end

