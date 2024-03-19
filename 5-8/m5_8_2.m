wc=2*pi*5;
Ts=0.001;
tf_lpf = tf(wc, [1 wc]);
dtf_lpf = c2d(tf_lpf, Ts, 'tustin');