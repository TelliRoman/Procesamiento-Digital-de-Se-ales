function [t,y]=Ej2A(tini,tfin,fm,fs,A,fi)
  T=1/fm;
  t=tini:T:tfin-T;
  y = A*(sin(2*pi*fs*t +fi));
  y = -1*y;
  endfunction
