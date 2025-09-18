y = load('eeg.txt');
y= y / max(abs(y));
figure(1)
plot(y)
r= acorr(y,8);
[A,E]= LevinsonDurbin(r,8);
p1 = akaike(E,length(y))
#figure(3)
#p2 = Error_predi_final(E,r,0.01)
#Para calcular la respuesta en frecuencia del sist
#obtenido evaludo el sistema en e^(j*tita) o uso freqz
sist= [1 : length(A(:,p1))];
for i=1 : length(A(:,p1))
  sist(i) = A(i,p1);
endfor
[h,w] = freqz(1 , sist);
fm = 250; #Frecuencia de muestreo de y
figure(2)
subplot(2,1,1);
plot(fm*w/(2*pi),abs(h)); #convierto el medio circulo de 0 a pi
                          #en 0 a fm/2
Y=fft(y);
N=length(y);
M=N/2+1; #Solo los valores positivos de la fft
f=(fm/N)*[0:M-1];#fm/N seria delta de frecuencia, y f va de 0 a fm/2
subplot(2,1,2)
plot(f,abs(Y(1:M)));

