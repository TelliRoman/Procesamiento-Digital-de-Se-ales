function [t,w] = ventanaHamming(tini,tfin,fm)
  T=1/fm;
  t=tini:T:tfin-T;
  N=length(t);
  w = zeros(1,N);
  for i=1 : N
  w(i) = 27/50 - (23/50).*cos((2*pi*(i))/(N));
  endfor
endfunction
