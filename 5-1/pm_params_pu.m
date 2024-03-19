Rs = 1.2;
Ld = 0.0057;
Lq = 0.0125;
Lamda_f = 0.03;
pole = 4;
J = 0.00016;
B = 0.0000028;
Pb = 890;
Ibrms = 4;
wb = (2*pi*1800/60)*pole/2;
Ib = Ibrms*sqrt(2);
Vb = 2*Pb/(3*Ib);
Zb = Vb/Ib;
Tb = Pb/(wb*2/pole);
Lamdab = Vb/wb;
Rspu = Rs/Zb;
Xdpu = Ld*wb/Zb;
Xqpu = Lq*wb/Zb;
Lamda_fpu = Lamda_f/Lamdab;
Jpu = J*wb/Tb;
Bpu = B*wb/Tb;

