clc
clear
fm=100;
[t,sen1] = senoidal(0,1,fm,2,1,0);
[t,sen2] = senoidal(0,1,fm,4,1,0);
[t,cua1] = cuadrada(0,1,fm,2,1,0);
###Inciso 1
##p1 = dot(sen1,cua1)
##p2 = dot(sen1,sen2)
##p3 = dot(cua1,sen2)
##figure(1)
##hold on
##plot(t,sen1)
##plot(t,sen2)
##plot(t,cua1)
###Inciso 2
##S1 = fft(sen1);
##S2 = fft(sen2);
##C1 = fft(cua1);
##p1 = dot(S1,conj(C1))
##p2 = dot(S1,conj(S2))
##p3 = dot(C1,conj(S2))
##figure(2)
##hold on
##deltaf = fm/length(t);
##f = -fm/2 : deltaf : fm/2 - deltaf;
##stem(f,abs(S1))
##plot(f,S2)
##plot(f,C1)
###Inciso 3
##[t,sen2] = senoidal(0,1,100,3.5,1,0);
##p1 = dot(sen1,sen2)
##S1 = fft(sen1);
##S2 = fft(sen2);
##p2 = dot(S1,conj(S2))
##figure(1)
##hold on
##plot(t,sen1)
##plot(t,sen2)
##figure(2)
##hold on
##deltaf = fm/length(t);
##f = -fm/2 : deltaf : fm/2 - deltaf;
##plot(f,S1)
##plot(f,S2)
