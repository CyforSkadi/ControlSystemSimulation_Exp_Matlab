%----------------------------------------%
%---=-----弹道导弹拦截系统绘图程序---=-----%
%--------仅供《系统仿真技术》上机用--------%
%--------------HIT20170502---------------%
%----------------------------------------%

lineW =2.5;           %设置线宽

%--------生成二维地表数据---------%
ang = 90:-1:45;
REx = R_Earth*cosd(ang);
REy = R_Earth*sind(ang);

%--------生成二维地表数据---------%
RTx = Rx.Data;                 %目标位置x轴
RTy = Ry.Data;                 %目标位置y轴

RMx = Rx1.Data;                 %导弹位置x轴
RMy = Ry1.Data;                 %导弹位置y轴

JPNt = Jpn.Time;                %性能指标时间轴
JPN  = Jpn.Data;                %性能指标（序列）
J    = Jpn.Data(end);                %性能指标（最终数值）

APNt = Ax.Time;                %控制加速度时间轴
APNx = Ax.Data;                %控制加速度x轴
APNy = Ay.Data;                %控制加速度y轴



%-------------绘图----------------%
figure ('position',[100 100 950 550]);

subplot(2,2,1);         
    plot(RTx,RTy,'-b',RMx,RMy,'-r',REx,REy,'-k','linewidth',lineW);    
    grid on;
    title('{\bf导弹和目标轨迹}')
    xlabel('{\bfx (km)}');       
    ylabel('{\bfy (km)}');  
    legend('目标','导弹','地表');
    
subplot(2,2,2);  
    plot(JPNt,JPN,'linewidth',lineW);   
    grid on; 
    xlabel('{\bfTime (s)}');    
    ylabel('{\bfJ (m^2/s^3)}'); 
    legend(['J_P_N=',num2str(J,'%10.1f')]);      
    title('{\bf性能指标J_P_N}');

subplot(2,2,3);  
    plot(APNt,APNx,'linewidth',lineW);   grid on; 
    xlabel('{\bf时间 (s)}');     
    ylabel('{\bfa_x (m/s^2)}'); 
    title('{\bfx轴控制加速度}');  

subplot(2,2,4);  
    plot(APNt,APNy,'linewidth',lineW);   grid on;
    xlabel('{\bf时间 (s)}');     
    ylabel('{\bfa_y (m/s^2)}'); 
    title('{\bfy轴控制加速度}');    