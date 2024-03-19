A = [-1,-2;1,0];
B = [2;0];
C = [0,1];
D = 0;
p1 = [-2,-3];
G1 = place(A,B,p1);
new_A = A-B*G1;
new_sys = ss(new_A,B,C,D);
new_poles = pole(new_sys);
step(ss(A,B,C,D));
hold on
step(new_sys);
legend('original system','state-feedback system')
h = findobj(gcf,'type','line');
set(h,'linewidth',2); grid on;
