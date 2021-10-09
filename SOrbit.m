%计算三颗卫星5小时运行状态
clc;
clear;

%三颗卫星初始条件
r01 = [7000,0,0]; dr01 = [0,7.5,0];
r02 = [8000,0,0]; dr02 = [0,0,8];
r03 = [15000,0,0]; dr03 = [0,3.6,3.6];

%设置仿真步长
options = odeset('MaxStep',1);

%第一颗卫星
[T1,Y1] = ode45(@gravity,[0,18000],[r01 dr01],options);
%第二颗卫星
[T2,Y2] = ode45(@gravity,[0,18000],[r02 dr02],options);
%第二颗卫星
[T3,Y3] = ode45(@gravity,[0,18000],[r03 dr03],options);

%绘制轨道轨迹
figure
[x,y,z] = sphere(20);
x = 6378*x;
y = 6378*y;
z = 6378*z;
mesh(x,y,z);    %绘制三维球体
axis equal;
hold on

plot3(Y1(:,1),Y1(:,2),Y1(:,3),'k','Linewidth',2);     %绘制三颗卫星轨迹
hold on
plot3(Y2(:,1),Y2(:,2),Y2(:,3),'r','Linewidth',2);
hold on
plot3(Y3(:,1),Y3(:,2),Y3(:,3),'g','Linewidth',2);
hold on

grid off
xlabel('x轴（公里）')
ylabel('y轴（公里）')
zlabel('z轴（公里）')
legend('卫星1','卫星2','卫星3')

%保存结果
save('SOrbit.mat','T1','Y1','T2','Y2','T3','Y3');

%万有引力运动方程
function dr = gravity(t,r)

u = 398600.4405;    %地心引力常数

dr = zeros(6,1);
dr(1) = r(4);
dr(2) = r(5);
dr(3) = r(6);
dr(4) = -u * r(1) / ((sqrtm(r(1)^2 + r(2)^2 + r(3)^2))^3);
dr(5) = -u * r(2) / ((sqrtm(r(1)^2 + r(2)^2 + r(3)^2))^3);
dr(6) = -u * r(3) / ((sqrtm(r(1)^2 + r(2)^2 + r(3)^2))^3);

end



