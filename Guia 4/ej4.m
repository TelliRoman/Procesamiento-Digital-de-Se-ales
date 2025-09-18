clc
clear
fm=1000;
[t,w] = ventanaHamming(-0.2,0.2,fm);
deltaf = fm/length(t);
f = 0 : deltaf : fm - deltaf;
W = fft(w);
subplot(2,2,1)
plot(t,w)
subplot(2,2,2)
plot(f,abs(W))
[t,w] = ventanaHamming(-0.1,0.1,fm);
deltaf = fm/length(t);
f = 0 : deltaf : fm - deltaf;
W = fft(w);
subplot(2,2,3)
plot(t,w)
subplot(2,2,4)
plot(f,abs(W))
[t,w] = ventanaHamming(-0.01,0.01,fm);
deltaf = fm/length(t);
f = 0: deltaf : fm - deltaf;
W = fft(w);
figure()
subplot(2,2,1)
plot(t,w)
subplot(2,2,2)
plot(f,abs(W))
[t,w] = ventanaHamming(-0.4,0.4,fm);
deltaf = fm/length(t);
f = 0 : deltaf : fm - deltaf;
W = fft(w);
subplot(2,2,3)
plot(t,w)
subplot(2,2,4)
plot(f,abs(W))
