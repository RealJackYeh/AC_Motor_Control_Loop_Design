s=tf('s')
tf_allpass_1=(0.3-s)/(s+0.3);
tf_allpass_2=(0.9-s)/(s+0.9);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_allpass_1,'-b',tf_allpass_2,'-.k',{0.01,10000},h);
legend('tf-allpass-1', 'tf-allpass-2');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;