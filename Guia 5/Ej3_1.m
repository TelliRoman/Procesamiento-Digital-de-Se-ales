clc
clear
pkg load signal

Yz = [1 -2 2 -1];
Xz = [1 -17/10 4/5 -1/10];
polos = roots(Yz) #Si estan dentro del circulo unitario asegura estabilidad
ceros = roots(Xz)
subplot(1, 2, 1);  % Primer subplot
zplane(Yz,Xz)
% Encontrar la respuesta al impulso a un impulso unitario con el delta de croneker
impulso = impz(Yz,Xz);
subplot(1, 2, 2);  % Primer subplot
stem(impulso);
