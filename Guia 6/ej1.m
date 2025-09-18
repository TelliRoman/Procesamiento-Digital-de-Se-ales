x = rand(10000,1);
x=x-mean(x);

b=1; #El sist dep de un solo valor de las entradas
a= [1 -0.3 0.4 -0.2]; #El sist dep de estos valores de la salidas
y = filter(b,a,x);

r= acorr(y,10);
[A,E] = LevinsonDurbin(r,10);

p1 = Error_predi_final(E,r,0.01)
figure
p2 = akaike(E,length(y))
