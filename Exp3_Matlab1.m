clc;
clear;

 m=imread("noobcv.png");
 w=im2bw(m,150/255);
 imshow(w);

[width,height,z]=size(w);

result2=w;
subplot(1,2,1)
imshow(w);
title('原图');

%k1、k2作为判断临界点
k1=0.2;
k2=0.2;
%rand(m,n)是随机生成m行n列的矩阵，每个矩阵元素都在0-1之间
%这里k都是0.2，所以小于k的元素在矩阵中为1，反之为0
a1=rand(width,height)<k1;
a2=rand(width,height)<k2;
%合成彩色图像
t1=result2(:,:);
t2=result2(:,:);
t3=result2(:,:);
%分成黑点 白点 随机
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
title('原图');

%k1、k2作为判断临界点
k1=0.2;
k2=0.2;
%rand(m,n)是随机生成m行n列的矩阵，每个矩阵元素都在0-1之间
%这里k都是0.2，所以小于k的元素在矩阵中为1，反之为0
a1=rand(width,height)<k1;
a2=rand(width,height)<k2;
%合成彩色图像
t1=result2(:,:);
t2=result2(:,:);
t3=result2(:,:);
%分成黑点 白点 随机
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
title('加椒盐噪声后');

result2(:,:)=t2;
result2(:,:)=t3;
subplot(1,2,2)
imshow(result2);
title('加椒盐噪声后');