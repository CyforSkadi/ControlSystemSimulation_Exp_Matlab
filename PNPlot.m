%----------------------------------------%
%---=-----������������ϵͳ��ͼ����---=-----%
%--------������ϵͳ���漼�����ϻ���--------%
%--------------HIT20170502---------------%
%----------------------------------------%

lineW =2.5;           %�����߿�

%--------���ɶ�ά�ر�����---------%
ang = 90:-1:45;
REx = R_Earth*cosd(ang);
REy = R_Earth*sind(ang);

%--------���ɶ�ά�ر�����---------%
RTx = Rx.Data;                 %Ŀ��λ��x��
RTy = Ry.Data;                 %Ŀ��λ��y��

RMx = Rx1.Data;                 %����λ��x��
RMy = Ry1.Data;                 %����λ��y��

JPNt = Jpn.Time;                %����ָ��ʱ����
JPN  = Jpn.Data;                %����ָ�꣨���У�
J    = Jpn.Data(end);                %����ָ�꣨������ֵ��

APNt = Ax.Time;                %���Ƽ��ٶ�ʱ����
APNx = Ax.Data;                %���Ƽ��ٶ�x��
APNy = Ay.Data;                %���Ƽ��ٶ�y��



%-------------��ͼ----------------%
figure ('position',[100 100 950 550]);

subplot(2,2,1);         
    plot(RTx,RTy,'-b',RMx,RMy,'-r',REx,REy,'-k','linewidth',lineW);    
    grid on;
    title('{\bf������Ŀ��켣}')
    xlabel('{\bfx (km)}');       
    ylabel('{\bfy (km)}');  
    legend('Ŀ��','����','�ر�');
    
subplot(2,2,2);  
    plot(JPNt,JPN,'linewidth',lineW);   
    grid on; 
    xlabel('{\bfTime (s)}');    
    ylabel('{\bfJ (m^2/s^3)}'); 
    legend(['J_P_N=',num2str(J,'%10.1f')]);      
    title('{\bf����ָ��J_P_N}');

subplot(2,2,3);  
    plot(APNt,APNx,'linewidth',lineW);   grid on; 
    xlabel('{\bfʱ�� (s)}');     
    ylabel('{\bfa_x (m/s^2)}'); 
    title('{\bfx����Ƽ��ٶ�}');  

subplot(2,2,4);  
    plot(APNt,APNy,'linewidth',lineW);   grid on;
    xlabel('{\bfʱ�� (s)}');     
    ylabel('{\bfa_y (m/s^2)}'); 
    title('{\bfy����Ƽ��ٶ�}');    