function [t,y]=cuadrada(tini,tfin,fm,fs,A,phi)
    [t,x]=senoidal(tini,tfin,fm,fs,A,phi);
    y=zeros(length(x),1);
    for i=1:length(x)
           if(x(i) > 0)
            y(i)=1;
         else
            y(i)=0;
            endif
    endfor
endfunction

