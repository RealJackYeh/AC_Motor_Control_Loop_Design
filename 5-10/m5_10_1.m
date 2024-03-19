wsc=942; J=0.00016;
Kp_w=J*wsc; Ki_w=Kp_w*wsc/5;
tf_pi=tf([Kp_w Ki_w],[1 0]);
tf_sensor = tf(628,[1 628]);
tf_plant=tf(1,[J 0]);
Go_noSensor = tf_pi*tf_plant;
Go_sensor = tf_pi*tf_sensor*tf_plant;
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(Go_noSensor,'-b',Go_sensor,'-.k',{1,10000},h);
legend('Go-noSensor','Go-sensor')
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;