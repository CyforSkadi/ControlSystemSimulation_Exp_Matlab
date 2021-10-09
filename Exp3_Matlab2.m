clc;
clear;

x0 = [0;0]; %��ֵ
lb = [-5;-5];%�½�
ub = [5;5];%�Ͻ�
x = fmincon(@F,x0,[],[],[],[],lb,ub,@C);

    function f = F(x)   %��⺯��
        f = exp(x(1))*(x(1)^2+2*x(2)^2+3*x(1)*x(2)+5*x(1)+4*x(2)+2);
    end

    function [c,ceq] = C(x) %Լ������
        ceq = x(1)+2*x(2);
        c = [x(1)*x(2)-x(1)-x(2)+3 -x(1)*x(2)-12];
    end
