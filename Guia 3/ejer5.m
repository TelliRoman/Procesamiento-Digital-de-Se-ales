function anachi = ejer5()
datos = load("te.txt");
fm = 11025;
T=1/fm;
t0= length(datos)/fm;
t=0:T:t0-T;
energia = datos.*datos;
##tiempos = [ 1.55, 1.95;
##           2.80 , 3.15;
##           3.60 , 3.90;
##           4.40 , 4.76;
##           5.40 , 5.70;
##           6.30 , 6.75;
##           7.30 , 7.80;
##           ];
tiempos = [17141, 21507;
           30239, 34527;
           39575, 43075;
           48442, 52875;
           58942, 63258;
           69792, 74108;
           80875, 85425];
plot(t,datos)
hold on
onda_cuadrada = zeros(length(t),1);
for m=1: size(tiempos,1)
 for i=1 : length(t)
        if( i >=  tiempos(m,1) && i < tiempos(m,2))
             onda_cuadrada(i) = 1;
           endif
  endfor
endfor
plot(t,onda_cuadrada)
%creo distintas fases
fases = linspace(0, 2*pi, 100);
respusta = zeros(1,7);
for i=1:7 #size(tiempos,1)
     #DT = tiempos(i,1) - tiempos(i,2);
     #t=0:T:DT-T;
     vectorsimilitud = zeros(10,length(fases));
     maxsimilitud = [-1e10,-1e10,-1e10,-1e10,-1e10,-1e10,-1e10,-1e10,-1e10,-1e10];
     ycada_onda = datos(tiempos(i,1):tiempos(i,2));
     tcada_onda = t(tiempos(i,1):tiempos(i,2));
     for j=1:length(fases)
        fila1 = sin((2*pi*667*tcada_onda+ fases(j)));
        fila2 = sin((2*pi*770*tcada_onda+ fases(j)));
        fila3 = sin((2*pi*852*tcada_onda+ fases(j)));
        fila4 = sin((2*pi*941*tcada_onda+ fases(j)));
        cola1 = sin((2*pi*1209*tcada_onda + fases(j)));
        cola2 = sin((2*pi*1336*tcada_onda + fases(j)));
        cola3 = sin((2*pi*1447*tcada_onda + fases(j)));
        n1= fila1 + cola1;
        n2= fila1 + cola2;
        n3= fila1 + cola3;
        n4= fila2 + cola1;
        n5= fila2 + cola2;
        n6= fila2 + cola3;
        n7= fila3 + cola1;
        n8= fila3 + cola2;
        n9= fila3 + cola3;
        n0= fila4 + cola2;
        #numeral= fila4 + cola1;
        #asterisco= fila4 + cola3;
        if(dot(ycada_onda,n1) > maxsimilitud(1))
          maxsimilitud(1) = dot(ycada_onda,n1);
          vectorsimilitud(1,j) = dot(ycada_onda,n1);
        endif
        if(dot(ycada_onda,n2) > maxsimilitud(2))
          maxsimilitud(2) = dot(ycada_onda,n2);
          vectorsimilitud(2,j) = dot(ycada_onda,n2);
        endif
        if(dot(ycada_onda,n3) > maxsimilitud(3))
          maxsimilitud(3) = dot(ycada_onda,n3);
          vectorsimilitud(3,j) = dot(ycada_onda,n3);
        endif
        if(dot(ycada_onda,n4) > maxsimilitud(4))
          maxsimilitud(4) = dot(ycada_onda,n4);
          vectorsimilitud(4,j) = dot(ycada_onda,n4);
        endif
        if(dot(ycada_onda,n5) > maxsimilitud(5))
          maxsimilitud(5) = dot(ycada_onda,n5);
          vectorsimilitud(5,j) = dot(ycada_onda,n5);
        endif
        if(dot(ycada_onda,n6) > maxsimilitud(6))
          maxsimilitud(6) = dot(ycada_onda,n6);
          vectorsimilitud(6,j) = dot(ycada_onda,n6);
        endif
        if(dot(ycada_onda,n7) > maxsimilitud(7))
          maxsimilitud(7) = dot(ycada_onda,n7);
          vectorsimilitud(7,j) = dot(ycada_onda,n7);
        endif
        if(dot(ycada_onda,n8) > maxsimilitud(8))
          maxsimilitud(8) = dot(ycada_onda,n8);
          vectorsimilitud(8,j) = dot(ycada_onda,n8);
        endif
        if(dot(ycada_onda,n9) > maxsimilitud(9))
          maxsimilitud(9) = dot(ycada_onda,n9);
          vectorsimilitud(9,j) = dot(ycada_onda,n9);
        endif
        if(dot(ycada_onda,n0) > maxsimilitud(10))
          maxsimilitud(10) = dot(ycada_onda,n0);
          vectorsimilitud(10,j) = dot(ycada_onda,n0);
        endif
    endfor
    minimo = min(vectorsimilitud(:));
    [f_pos_min,c_pos_min] = find(vectorsimilitud == minimo);
    respusta(i) = f_pos_min;
endfor
respusta
endfunction
