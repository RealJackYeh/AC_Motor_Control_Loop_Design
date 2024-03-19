s=tf('s')
tf_allpass_1=(0.3-s)/(s+0.3);
tf_allpass_2=(0.9-s)/(s+0.9);
Gm=(s+3)/(s^2+2*s+1);
G1=Gm*tf_allpass_1;
G2=Gm*tf_allpass_2;
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(Gm,'-b',G1,'-.k',G2,'.g',{0.01,10000},h);
legend('Gm', 'G1', 'G2');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;