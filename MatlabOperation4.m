%ʵ����ֶκ�����ֵ ����Ϊx ���Ϊy
function y = MatlabOperation4(x)


    y = (x.^2 + x - 6).*(x < 0 & x ~= 3) + (x.^2 - 5*x + 6).*(x >=  0 & x < 5 & x ~= 2 & x ~= 3) + (x.^2 - x - 1).*(x < 0 | x == 2 | x == 3);
        
end