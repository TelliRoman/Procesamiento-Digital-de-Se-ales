function [t,y]=Ej1B(tini,tfin,fm,fs,A)
  T=1/fm;
  t=tini:T:tfin-T;
  x=2*pi*fs*t;
  y=sin(x) ./ x;
  % y(x==0)=1;
 endfunction
