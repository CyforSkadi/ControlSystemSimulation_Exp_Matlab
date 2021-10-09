function dx = PD2 (t,x)
    global Kp Kd;
    dx = zeros(2,1);
    dx(1) = x(2);
    dx(2) = - Kp *x(1)- Kd *x(2);
end