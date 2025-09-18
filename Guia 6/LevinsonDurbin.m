function [A,E] = LevinsonDurbin(r,P)
  E=zeros(P+1,1);
  E(1) = r(1);
  A=zeros(P,P);
  for i=1 : P
    aux = r(i+1);
    for j=1 : i-1
      aux = aux + A(j,i-1) * r(i+1-j);
    endfor
      k = - aux / E(i);
      A(i,i) = k;
    for j=1 : i-1
        A(j,i) = A(j,i-1) + k*A(i-j,i-1);
    endfor
    E(i+1) = E(i) *(1-k^2);
  endfor

