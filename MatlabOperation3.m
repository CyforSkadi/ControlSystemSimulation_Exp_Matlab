%��10^4��10^5֮���ܱ�10�����������ĸ���
clc;
clear;

NO4 = 0;

for k = 10^4:1:10^5
    if mod(k,factorial(10)) == 0
        NO4 = NO4 + 1;
    end
end

