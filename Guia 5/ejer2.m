%%ejercicio 2 guia 5
fm= 10000;
W=0: 0.001: ((2*pi)-0.001);
%%para el 1
figure(1)
z = e.^(i*W);
H = 1 ./((-1/2*(z.^-1)) + (1/4*z.^-2));
deltaf = fm/length(W);
f= 0:deltaf:fm-deltaf;
plot(f,abs(H)); #Graficar en frecuencias no en angulos
%%para el 2
figure(2)
z = e.^(i*W);
H = (z.^-1) ./ (1-(z.^-1)-(z.^-2));
plot(W,abs(H));
%%para el 3
figure(3)
z = e.^(i*W);
H = 7 ./((-2*(z.^-1)) + (6*z.^-2));
plot(W,abs(H));
%%para el 4
figure(4)
z = e.^(i*W);
H=  1 + (1/2  * z.^-1) + (1/4 *  z.^-2) + (1/8 *  z.^-3) + (1/16 *  z.^-4) + (1/32 *  z.^-5) + (1/64 *  z.^-6) + (1/128 *  z.^-7);
plot(W,abs(H));


