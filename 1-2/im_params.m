Rs = 0.8;
Rr = 0.6;
Ls = 0.085;
Lr = 0.085;
Lm = 0.082;
pole = 4;
J = 0.033;
B = 0.00825;
w = Ls*Lr - Lm^2;
Lsigma = w/Lr;
sigma = 1 - Lm^2/(Ls*Lr);
Tr = Lr/Rr;
K1 = (-Rs*Lr^2-Rr*Lm^2)/(Lr*w);
K2 = (Rr*Lm)/(Lr*w);
K3 = Lm/w;
K4 = Lr/w;
K5 = Rr*Lm/Lr;
K6 = -Rr/Lr;




