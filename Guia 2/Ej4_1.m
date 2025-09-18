function a = Ej4_1(a,b)
  #a=[1 0 -1] b[1]
  #if (length(a) <= length(b))
  #  M= length(b)-1
  #else
  #  M= length(a)-1
  #endif
  for i=0:4
    #for j=1: M
      if (i-2 >= 0)
        a(i+1) = a(i-2+1) + (b(1) * delta(i));
      else
        a(i+1) = (b(1) * delta(i));
      endif
    #endfor
  endfor
endfunction
