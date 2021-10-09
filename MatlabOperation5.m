%绘制x从-5到5变化时，y的变化曲线
clc;
clear;

x = -5:0.01:5;

plot(x,MatlabOperation4(x),'.-r');
xlabel('自变量x');
ylabel('函数值y');
axis([-5 5 -inf inf]);