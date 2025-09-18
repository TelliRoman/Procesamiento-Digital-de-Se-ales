function convu= convolucion(a,b)
  l1=length(a);
  l2=length(b);
  M= l1+l2-1;
  y=zeros(M,1);

  for n=1:M
    for k=1:l1
      if((n-k+1) > 0 && n-k < l2)
          y(n) = y(n) + a(k)*b(n-k+1);
          endif
      endfor
  endfor
  convu=y';
