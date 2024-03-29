wn=1000;
tf_1lpf = tf(wn,[1 wn]);
tf_2bwlpf = tf(wn^2,[1 2*cos(45*pi/180)*wn wn^2]);
tf_3bwlpf =tf(wn,[1 wn])*tf(wn^2,[1 2*cos(60*pi/180)*wn wn^2]);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_1lpf,'-b',tf_2bwlpf,'-.r',tf_3bwlpf,'.g',{1,100000},h);
legend('1_order_LPF','2_order_BWLPF', '3_order_BWLPF');
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;