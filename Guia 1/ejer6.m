function [ti,y,x,t] = ejer6(tini,tfin,fm,fs,A,phi)
  T=1/fm;
  Ti=T/4;
  t=tini:T:tfin-T;
  ti=tini:Ti:tfin-Ti;

  [tx, x] = ejer1a (tini,tfin,fm,fs,A,phi);
  %[tI, I] = ejer1b (tini,tfin,(4*fm),fs,A,phi);

   n=length(t);
   m=length(ti);

   y= zeros(size(ti));



     for i=1:m
        for j=1:n
           y(i) = y(i) + x(j) * escalon((i*Ti/T - j+1));
        endfor

 endfor


subplot(2,1,1);
plot(t, x, 'y', 'LineWidth', 1.5); % Señal original
title('Señal Original');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;

subplot(2,1,2);
plot(ti, y, 'g', 'LineWidth', 1.5); % Señal sobremuestreada e interpolada
title('Señal Interpolada');
xlabel('Tiempo (s)');
ylabel('Amplitud');
grid on;




