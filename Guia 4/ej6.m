clc; clear all; close all;
## puedo considerar la amplitud 1
x = load('necg.txt');
fm = 360;
T = 1/fm;
t =0:T:length(x)*T -T;
figure(1)
subplot(2,1,1)
plot(x);
X=fft(x');
N=length(x)
X_filtrada = zeros(1,N);
for k=1 : N
     #f=(2*pi)* k/N;
     f=(k/N)*fm;
    if(f >= 40 && f <= 180)
      X_filtrada(k) = 0;
    elseif (f >= 180 && f <= 360-40)
      X_filtrada(k) = 0;
    else
      X_filtrada(k) = X(k);
    endif
endfor
x_filtrada = real(ifft(X_filtrada));
subplot(2,1,2)
plot(x_filtrada)
figure(3)
deltaf = fm/N;
#f = -fm/2 : deltaf : fm/2 - deltaf;
f = 0 : deltaf : fm - deltaf;
stem(f,abs(X))
figure(4)
stem(f,abs(X_filtrada))
