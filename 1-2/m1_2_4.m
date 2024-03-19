t1 = 0.001;
va = 220*1.414*sin(2*pi*50*t1);
vb = 220*1.414*sin(2*pi*50*t1-2*pi/3);
vc = 220*1.414*sin(2*pi*50*t1-4*pi/3);
vabc1 = 2/3*(va + exp(1j*2*pi/3)*vb + exp(1j*4*pi/3)*vc);
rho = abs(vabc1);
theta = angle(vabc1)*180/pi;
v_alpha = 2/3*(1*va - 0.5*vb - 0.5*vc);
v_beta = 2/3*(sqrt(3)/2*vb - sqrt(3)/2*vc);
v_zero = 2/3*(0.5*va + 0.5*vb + 0.5*vc);
va1 = v_alpha + v_zero;
vb1 = -0.5*v_alpha + sqrt(3)/2*v_beta + v_zero;
vc1 = -0.5*v_alpha - sqrt(3)/2*v_beta + v_zero;
fprintf('The space vector Vabc: abs(aVbc) = %6.2f, angle(Vabc) = %6.2f\n',rho, theta)
fprintf('V_alpha of Vabc is %6.2f, V_beta of Vabc is %6.2f\n',v_alpha, v_beta)
fprintf('Va of Vabc is %6.2f, Vb of Vabc is %6.2f, Vc of Vabc is %6.2f\n',va1, vb1, vc1)