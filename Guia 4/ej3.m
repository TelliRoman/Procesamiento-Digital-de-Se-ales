clc
clear
[t,sen1] = senoidal(0,1,100,10,1,0);
S = fft(sen1);
N = length(S);
for k=1 : N
  for j=1 : 10
    S = S * exp((-i*(2*pi*k*j))/N);
  endfor
endfor
s = ifft(S);
hold on
t1=0: 1/100 : 1- 1/100;
t2=0.1: 1/100: 1.1 - 1/100;
plot(t2,s)
plot(t1,sen1)
