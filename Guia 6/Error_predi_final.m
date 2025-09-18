function p = Error_predi_final(E,r,gamma)
  #r0 = ones(length(r));
  #r0 = r0 * r[1];
  V = E /r(1);
  est = 1 - (V(2:end) ./ V(1 : end-1));
  for k=1 : length(est)
    if est(k) < gamma
      break
    endif
  endfor
  p=k;
  plot(est)
