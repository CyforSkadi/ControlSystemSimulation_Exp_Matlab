clc;
clear;

x0 = [0;0]; %初值
lb = [-5;-5];%下界
ub = [5;5];%上界
x = fmincon(@F,x0,[],[],[],[],lb,ub,@C);

    function f = F(x)   %求解函数
        f = exp(x(1))*(x(1)^2+2*x(2)^2+3*x(1)*x(2)+5*x(1)+4*x(2)+2);
    end

    function [c,ceq] = C(x) %约束函数
        ceq = x(1)+2*x(2);
        c = [x(1)*x(2)-x(1)-x(2)+3 -x(1)*x(2)-12];
    end
