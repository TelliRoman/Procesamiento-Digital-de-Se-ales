clc; clear all; close all;
## puedo considerar la amplitud 1
x = load('te.txt');

fm = 11025;
T = 1/fm;
t =0:T:length(x)*T-T;

plot(x);

#aproximacion con el valor que nos da poniendo el mouse en el valor de la frecuencia
nmuestranotas = [17141, 21507;
                 30239, 34527;
                 39575, 43075;
                 48442, 52875;
                 58942, 63258;
                 69792, 74108;
                 80875, 85425];

%para mostrar ventaneo #marcar las muestras de nmuestrasnotas
ventaneo = zeros(1,length(t));
for i=1:length(t)
  for j=1:size(nmuestranotas,1)
    if(i>=nmuestranotas(j,1) && i<= nmuestranotas(j,2))
      ventaneo(i)=1;
      break
    endif
  endfor
endfor
hold on;
plot(ventaneo);


%creo matriz de frecuencias y numeros. el 33 representa el asterisco y el 44 el numeral
numyfreq = [00   1209 1336 1477;
            697   1    2    3;
            770   4    5    6;
            852   7    8    9;
            941   33   0    44];


%creo distintas fases
fases = linspace(0, 2*pi, 100);

freqfilaporpulso = zeros(size(nmuestranotas,1),1);
freqcolumnaporpulso = zeros(size(nmuestranotas,1),1);

#PARA CADA FRECUENCIA NOS FIJAMOS EL PRODUCTO PUNTO, NOS GUARDAMOS LA FILA Y COLUMNA
#DEL QUE DIO MAYOR VALOR EL PRODUCTO PUNTO Y LA INTERSECCION DE FILA Y COLUMNA SERA EL
#DIGITO DISCADO

%para cada pulso
for p=1:size(nmuestranotas,1)
  mini = nmuestranotas(p,1);
  mfin = nmuestranotas(p,2);
  tpulso = t(mini:mfin);
  xpulso = x(mini:mfin);

  %---------------------------busco entre las frecuencias fila
  %SOLO NOS IMPORTA EL PRODUCTO INTERNO DE MAYOR VALOR

  maxfreqindex = 0;
  maxsimilitud = -1e10; %valor muy chico para comparar, deberia ser la sim con la primer freq

  for i=2:size(numyfreq,1) %para cada valor de frecuencia
    freq = numyfreq(i,1);

    for j=1:length(fases) %para cada fase
      fase = fases(j);
      senoidal = sin(2*pi*freq*tpulso+fase);
      similitud = dot(xpulso,senoidal);  %Por que con mi funcion prod_interno no funciona?

      if (similitud > maxsimilitud)
        maxsimilitud = similitud;
        maxfreqindex = i;
      endif
    endfor
  endfor
  freqfilaporpulso(p) = maxfreqindex;


  %------------------------busco entre las frecuencias columna
  maxfreqindex = 0;
  maxsimilitud = -1e10; %valor muy chico para comparar, deberia ser la sim con la primer freq

  for i=2:size(numyfreq,2) %para cada valor de frecuencia
    freq = numyfreq(1,i);

    for j=1:length(fases) %para cada fase
      fase = fases(j);
      senoidal = sin(2*pi*freq*tpulso+fase);
      similitud = dot(xpulso,senoidal);  %Por que con mi funcion prod_interno no funciona?

      if (similitud > maxsimilitud)
        maxsimilitud = similitud;
        maxfreqindex = i;
      endif
    endfor
  endfor
  freqcolumnaporpulso(p) = maxfreqindex;
endfor


#buscamos la interseccion en la matriz que estan los digitos
display('Numero marcado: ');
for i=1:size(nmuestranotas,1)
  disp(numyfreq(freqfilaporpulso(i),freqcolumnaporpulso(i)));
 endfor

