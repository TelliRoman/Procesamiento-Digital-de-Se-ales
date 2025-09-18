clc
clear
syms z;
Yz = [1 -2 2 -1];
Xz = [1 -17/10 4/5 -1/10];
polos = roots(Yz)
ceros = roots(Xz)
zplane(Yz,Xz)
Hz = ( 1 - 2 .*(z.^-1) + 2 .*(z.^-2) - (z.^-3) ) ./ ((1 - (z.^-1)) .* (1 - 0.5 .*(z.^-1)) .* (1 - 0.2 .*(z.^-1)));
hn = iztrans(Hz);
h=[1 0];
