function convu= convolucion_circular(x,h)
  l1=length(x);
  N=length(h); #Ambas de N muestras
  M= l1+N-1;
  y=zeros(M,1);

  for k=1:M
    for l=1:N
      if((k-l+1) > 0 && k-l < N)
          y(k) = y(k) + h(l) * x(mod((N+k-l),N) + 1);
          endif
      endfor
  endfor
  convu=y';

