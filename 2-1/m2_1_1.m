Rs=0.8; Rr=0.6; Ls=0.085; Lr=0.085; Lm=0.082;
pole=4; J=0.033; B=0.00825;
w = Ls*Lr - Lm^2; Lsigma = w/Lr;
sigma = 1 - Lm^2/(Ls*Lr); Tr = Lr/Rr;
N = 1/Lsigma; D = Rs/Lsigma + (1-sigma)/(sigma*Tr);
wd = 500; 
Kp_id = wd/N 
Ki_id = D*wd/N
