function [t,y]=Ej2B(tini,tfin,fm,fs,A,fi)
  T=1/fm;
  t=tini:T:tfin-T;
  y = A*(sin(2*pi*fs*t+fi));
  %y(y<0)=0;
  y(y<0)=abs(y(y<0));
  endfunction
