clc
clear
w= linspace(0,1000*pi,100000);
Hjw = (12500 .* (i.*w)) ./ ((44 .*(i.*w).^2) + (60625 .*(i.*w)) + 6250000);
figure(1)
plot(w,abs(Hjw))
maxi = max(real(Hjw))
dbcorte = maxi * 10^(-3/10)
dif = abs(real(Hjw) - dbcorte);
valorcerca = min(dif);
pos = find(dif == valorcerca);
f_muestreo =4 * (pos/(2*pi));
T = 1/f_muestreo;
w = 0:T:1/2;
z = e.^(-i * w);
s= (1-(z.^-1))/T;
Hjw = (12500 .* s) ./ ((44 .*s.^2) + (60625 .*s) + 6250000);
figure(2)
plot(w,abs(Hjw))
w = -pi:T:pi;
z = e.^(-i * w);
s= 2/T .* ((1-(z.^-1)) ./ (1+(z.^-1)));
Hjw = (12500 .* s) ./ ((44 .*s.^2) + (60625 .*s) + 6250000);
figure(3)
plot(w,abs(Hjw))
