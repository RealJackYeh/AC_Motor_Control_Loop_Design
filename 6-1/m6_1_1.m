sys = tf(1,[1 2 1 0]);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(sys,'-b',{0.01,100},h);
legend('G(s)H(s)');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;