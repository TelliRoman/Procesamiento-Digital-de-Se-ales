function [t,y]=Ej1A_Guia1(tini,tfin,fm,fs,A,fi)
  T=1/fm;
  t=tini:T:tfin-T;
  y = A*(sin(2*pi*fs*t+fi));
endfunction


