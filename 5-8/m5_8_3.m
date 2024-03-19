wc=2*pi*5;
Ts=0.001;
tf_lpf = tf(wc, [1 wc]);
dtf_lpf = c2d(tf_lpf, Ts, 'tustin');
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_lpf,'-b',dtf_lpf,'-.k',{0,10000},h);
legend('analog_filter','digital_filter');
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;