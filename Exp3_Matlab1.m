clc;
clear;

 m=imread("noobcv.png");
 w=im2bw(m,150/255);
 imshow(w);

[width,height,z]=size(w);

result2=w;
subplot(1,2,1)
imshow(w);
title('ԭͼ');

%k1��k2��Ϊ�ж��ٽ��
k1=0.2;
k2=0.2;
%rand(m,n)���������m��n�еľ���ÿ������Ԫ�ض���0-1֮��
%����k����0.2������С��k��Ԫ���ھ�����Ϊ1����֮Ϊ0
a1=rand(width,height)<k1;
a2=rand(width,height)<k2;
%�ϳɲ�ɫͼ��
t1=result2(:,:);
t2=result2(:,:);
t3=result2(:,:);
%�ֳɺڵ� �׵� ���
t1(a1&a2)=0;
t2(a1&a2)=0;
t3(a1&a2)=0;
t1(a1& ~a2)=255;
t2(a1& ~a2)=255;
t3(a1& ~a2)=255;
result2(:,:)=t1;
[width,height,z]=size(w);

result2=w;
subplot(1,2,1)
imshow(w);
title('ԭͼ');

%k1��k2��Ϊ�ж��ٽ��
k1=0.2;
k2=0.2;
%rand(m,n)���������m��n�еľ���ÿ������Ԫ�ض���0-1֮��
%����k����0.2������С��k��Ԫ���ھ�����Ϊ1����֮Ϊ0
a1=rand(width,height)<k1;
a2=rand(width,height)<k2;
%�ϳɲ�ɫͼ��
t1=result2(:,:);
t2=result2(:,:);
t3=result2(:,:);
%�ֳɺڵ� �׵� ���
t1(a1&a2)=0;
t2(a1&a2)=0;
t3(a1&a2)=0;
t1(a1& ~a2)=255;
t2(a1& ~a2)=255;
t3(a1& ~a2)=255;
result2(:,:)=t1;
result2(:,:)=t2;
result2(:,:)=t3;
subplot(1,2,2)
imshow(result2);
title('�ӽ���������');

result2(:,:)=t2;
result2(:,:)=t3;
subplot(1,2,2)
imshow(result2);
title('�ӽ���������');