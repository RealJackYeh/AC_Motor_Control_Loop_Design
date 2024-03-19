T=0.001;
z=tf('z', T);
s=tf('s');
tf_euler_integrator = T*z/(z-1);
tf_s_integrator = 1/s;
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_s_integrator,'-b',tf_euler_integrator,'-.k',{0.01,10000},h);
legend('tf-s-integrator','tf-euler-integrator');
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;