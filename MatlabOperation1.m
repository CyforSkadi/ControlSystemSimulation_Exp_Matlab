clc;
clear;

A = [12 34 -4;34 7 87;3 65 7];
B = [1 3 -1;2 0 3;3 -2 7];

C1 = A^2+sin(5/360*2*pi)*B;   %���Ƕ�ת��Ϊ����

C2 = inv(A+ones(3))*B;

C3 = A*B;
C4 = A.*B;

Temp = C3>C4; %�ȽϽ������
l = 1;
for k = 1:9
    if Temp(k) == 1
        C51(l) = C3(k);
        l = l+1;
    end
end     %ȡ��C3��Ԫ��
l = 1;
for k = 1:9
    if Temp(k) == 1
        C52(l) = C4(k);
        l = l+1;
    end
end     %ȡ��C4��Ԫ��
C5 = [C51; C52]';    %����ƴ��

%������
save('Result1.mat','C1','C2','C3','C4','C5');

