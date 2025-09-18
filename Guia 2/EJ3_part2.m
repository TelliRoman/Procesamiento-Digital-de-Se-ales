function [y,y1] = EJ3_part2(a,N)
  n=0:1:N-1;
  ha=sin(8 .*n);
  hb= a .^n;
  x = [1 , -a];
  w=convolucion(x,ha);
  y=convolucion(w,hb);

  w1=convolucion(x,hb);
  y1=convolucion(w1,ha);

  figure(1);
  subplot (2, 3, 1);
    stem(ha);
    title("h_A");
  subplot (2, 3, 4);
    stem(hb);
    title("h_B");
  subplot (2, 3, 2);
    stem(1:length(w),w);
    title("w_1");
  subplot (2, 3, 5);
    stem(1:length(y),y);
    title("y_1");

  subplot (2, 3, 3);
    stem(1:length(w1),w1);
    title("w_2");
  subplot (2, 3, 6);
    stem(1:length(y1),y1);
    title("y_2");
#Las salidas obtenidas son iguales, lo que quiere decir que
#no importa el orden de convolucion
#(x conv ha) conv hb = (x conv hb) conv ha
endfunction
