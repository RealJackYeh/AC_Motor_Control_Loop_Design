J=0.00016;
target_BW=100*2*pi; % rad/s
for wsc=target_BW/3:0.1:target_BW*5
    Kps = J*wsc;
    Kis = Kps*(wsc/5);
    tf_cmdFilter = tf([Kis/Kps], [1 Kis/Kps]);
    tf_PI = tf([Kps Kis],[1 0]);
    tf_currLoop = tf(5000, [1 5000]);
    tf_plant = tf(1,[J 0]);
    Go_PI = tf_PI*tf_currLoop*tf_plant;
    Gc_PI = Go_PI/(1+Go_PI);
    G_IP = tf_cmdFilter*Gc_PI;
    IP_BW = bandwidth(G_IP);
    if (abs(IP_BW - target_BW)<1)
        break;
    end
end
Kps 
Kis