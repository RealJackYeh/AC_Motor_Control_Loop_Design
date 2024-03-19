s=tf('s')
G3=5*(s+3)/(s*(s-1));
G3m=5*(s+3)/(s*(s+1));
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(G3,'-b',G3m,'-.k',{0.1,10000},h);
legend('G3','G3m');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;