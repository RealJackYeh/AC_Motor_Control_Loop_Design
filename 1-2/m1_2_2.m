t = linspace(0, 0.02, 100);
va = 220*1.414*sin(2*pi*50*t);
vb = 220*1.414*sin(2*pi*50*t+2*pi/3);
vc = 220*1.414*sin(2*pi*50*t-2*pi/3);
vabc = 2/3*(va + exp(1j*2*pi/3)*vb + exp(1j*4*pi/3)*vc);
polarplot(vabc);
hold on
t1 = 0.5*(1/50);
va1 = 220*1.414*sin(2*pi*50*t1);
vb1 = 220*1.414*sin(2*pi*50*t1+2*pi/3);
vc1 = 220*1.414*sin(2*pi*50*t1-2*pi/3);
vabc1 = 2/3*(va1 + exp(1j*2*pi/3)*vb1 + exp(1j*4*pi/3)*vc1);
polarplot(vabc1,'-o');
legend('Vabc','starting point')

