s=tf('s')
tf_minimal_phase=(s+1)/(s^2+s+1);
tf_nonminimal_phase=(-s+1)/(s^2+s+1);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_minimal_phase,'-b',tf_nonminimal_phase,'-.k',{0.01,10000},h);
legend('tf-minimal-phase', 'tf-nonminimal-phase');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;