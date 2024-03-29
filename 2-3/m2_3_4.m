s=tf('s'); Ts=1/4000;
wsc=100; J=0.00016;
Td_total=Ts+0.002+0.001+Ts/2;
alpha=1/(wsc*Td_total);
Kp_w=J/(alpha*Td_total); Ki_w=Kp_w/(alpha^2*Td_total);
tf_pi=tf([Kp_w Ki_w],[1 0]);
tf_plant=tf(1,[J 0]);
tf_compuDelay = exp(-s*Ts);
tf_filter = tf(500,[1 500]);
tf_currLoop = tf(1000,[1 1000]);
tf_shDelay = exp(-s*Ts/2);
Go_w_withDelay = tf_pi*tf_plant*tf_compuDelay*tf_filter*tf_currLoop*tf_shDelay;
Gc_w_withDelay = Go_w_withDelay/(1+Go_w_withDelay);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(Go_w_withDelay,'-.b',{1,1000},h);
legend('Go_w-withDelay');
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;