function r = acorr(s,P)
  N=length(s);
  r=zeros(P+1,1);
  for i=0:P
    for j=1 : N-i
         r(i+1) = r(i+1) + s(j)*s(j+i);
    endfor
  endfor
  r=r/N;
