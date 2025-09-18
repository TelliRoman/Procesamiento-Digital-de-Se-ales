clc
clear
fm=1000;
[t,sen1] = senoidal(0,1,fm,10,1,0);
[t,sen2] = senoidal(0,1,fm,20,1,0);
s = sen1 + 4.* sen2;
S1 = fft(s);
###Inciso 1
##figure(1)
##subplot(2,1,1)
##plot(t,s)
##deltaf = fm/length(t)
##f = -fm/2 : deltaf : fm/2 -deltaf;
##subplot(2,1,2)
##stem(f,abs(S1)) #espectro de magnitud
###Inciso 2
##suma_s = 0;
##suma_S = 0;
##for i=1 : length(t)
##  suma_s += s(i)^2;
##  suma_S += abs(S1(i))^2;
##endfor
##if (int16(suma_s) == int16(suma_S/length(S1)))
##  disp('Comprueba parseval')
##endif
##suma_s
##suma_S/length(S1)
#Inciso 3
###A
##sen = sen1 + 4.*sen2 + 4;
##S = fft(sen);
##figure(2)
##subplot(2,1,1)
##plot(t,sen)
##deltaf_2 = fm/length(t)
##f = -fm/2 : deltaf_2 : fm/2 -deltaf_2;
##tamanodelespectrof=length(f)
##subplot(2,1,2)
##stem(f,abs(S))
###B
##[t,sen2_2] = senoidal(0,1,1000,11,1,0);
##sen_2 = sen1 + 4.*sen2_2 + 4;
##S_2 = fft(sen_2);
##figure(3)
##subplot(2,1,1)
##plot(t,sen_2)
##subplot(2,1,2)
##stem(f,abs(S_2))
###C
##[t,sen2_3] = senoidal(0,1,1000,10.5,1,0);
##sen_3 = sen1 + 4.*sen2_3 + 4;
##S_3 = fft(sen_3);
##figure(4)
##subplot(2,1,1)
##plot(t,sen_3)
##subplot(2,1,2)
##stem(f,abs(S_3))
###D
##[t,sen1] = senoidal(0,2,1000,10,1,0);
##[t,sen2] = senoidal(0,2,1000,20,1,0);
##sen_4 = sen1 + 4.*sen2 + 4;
##S_4 = fft(sen_4);
##figure(5)
##subplot(2,1,1)
##plot(t,sen_4)
##subplot(2,1,2)
##deltaf_3 = fm/length(t) #Ahora el tamaño de t es el doble pq se muestrea a la misma fm con doble tiempo
##f = -fm/2 : deltaf_3 : fm/2 -deltaf_3;
##tamdeespetrof = length(f) #Se duplica las muestras en f y se dulpica la amplitud de f
##stem(f,S_4)

