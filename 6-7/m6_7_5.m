s=tf('s')
Gm=(s+1)/(s^2+s+1);
Gn1=(-s+1)/(s^2+s+1);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
step(Gm); hold on;
step(Gn1);
legend('Gm','Gn1');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;