t = linspace(0, 0.05, 100);
va = 220*1.414*sin(2*pi*50*t);
vb = 220*1.414*sin(2*pi*50*t-2*pi/3);
vc = 220*1.414*sin(2*pi*50*t-4*pi/3);
plot(t, va, t, vb, t, vc, 'LineWidth', 2);
legend('Va','Vb','Vc')