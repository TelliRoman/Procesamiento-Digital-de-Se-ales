function [t,y1]=Ej2C(tini,tfin,fm,fs,A,fi,N)
  T=1/fm;
  t=tini:T:tfin-T;
  H=(2*A)/(N);
  y = A*(sin(2*pi*fs*t +fi));
  y=y+A;
  %y1=floor(y / H) * H;
  y1=zeros(size(y));
  for i=1:length(y)
   if(y(i)<0)
      y1(i)=0;
    elseif (y(i)>=0 || y(i) < (N-1)*H)
      y1(i)=floor(y(i)/H) * H;
    elseif (y(i) >= (N-1)*H)
      y1(i) = (N-1)*H;
    endif
  endfor
  %y1(y<0)=zeros(size(y(y<0)));
  %y1(y>=0 || y<(N-1)*H)= H * floor(y(y>=0 || y<(N-1)*H) ./H);
  %y1(y>=(N-1)*H)=(N-1)*H;
  y1=y1-A;
  endfunction
