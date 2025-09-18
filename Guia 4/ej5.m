clc
clear
fm=50;
f_original = 27;
A=3;
[t,sen1] = senoidal(0,1,fm,f_original,A,0);
S1 = fft(sen1);
deltaf = fm/length(t);
f = -fm/2 : deltaf : fm/2 - deltaf;
#Inciso 1
figure(1)
stem(abs(S1)) #El espectro graficado en muestras
figure(2)
stem(f,abs(S1)) #El espectro graficado en Frecuencias
#Muestra una frecuencia de 2 y -2
#Porque ocurre un fenomeno de Aliasing ya que esta muestreada
#a una f de 50 muestras por seg, con una fs de 27 por seg
#ya que 27*2 > 50 (alias 2*fs <= fm)
#Por lo tanto lo que estoy viendo es informacion "De la señal de al lado"
###Inciso 2
##if(2*f_original <= fm)
##  f_obs = f_original
##else
##  c=0;
##  f_veo=0;
##  f_o_p = f_original;
##  while(f_o_p > f_veo)
##    c += 1;
##    f_veo = f_veo + fm;
##  endwhile
##  f_obs = abs ((fm*c - f_original) - fm/2)
##endif
#Inciso 3
#magnitud_obs = A*(fm/2)
#La magnitud obs en el espectro de frecuencia tiene que ver
#con la amplitud de la señal y la frecuencia de muestreo


