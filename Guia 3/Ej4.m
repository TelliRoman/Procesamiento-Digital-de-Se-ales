clc
clear
s_comb_lineal = zeros(1,100);
for i=1:10
  [t,y]=senoidal(0,1,100,i,1,0);
  s_comb_lineal += y*i; #Peso por i en cada senoidal
endfor
#Punto A
figure(1)
hold on
grid on
for i=1:10
  [t,y]=Ej1A_Guia1(0,1,100,i,1,0);
  comp = dot(s_comb_lineal, y);
  stem(i,comp)
endfor
#Punto B
figure(2)
hold on
grid on
for i=1:10
  [t,y]=Ej1A_Guia1(0,1,100,i,1,rand());
  comp = dot(s_comb_lineal, y);
  stem(i,comp)
endfor
#Punto C
figure(3)
hold on
grid on
for i=1:10
  [t,y]=cuadrada(0,1,100,5.5,1,0);
  comp = dot(s_comb_lineal, y);
  stem(i,comp)
endfor
