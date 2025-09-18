#sistema causal: depende de los valores prensentes y pasados de la entrada
#y de los valores pasados de la salida.
#1:y[n]= g[n]x[n];  g[n] = A * sin(2*pi*f*n*T);
  #Es causal: solo depende de entradas presentes.
  #y1[n] = g[n]x1[n]
  #y2[n] = g[n]x2[n]
  #entrada a *x1[n] + b *x2[n]; tiene que dar a *y1[n] + b *y2[n]
  #y[n] = g[n](a *x1[n] + b *x2[n])
  #y[n] = a *g[n]x1[n] + b *g[n]x2[n]
  #y[n] = a *y1[n] + b *y2[n] es lineal (Homogeneidad y Superposicion)
  #Es sin memoria pq depende unicamente de la entrada en el instante actual
  #Invariante en el tiempo:
  #x[n] ----> y[n]
  #x[n-k] ----> y[n-k]
  #x1[n]=x[n-k]
  #y1[n]= g[n]x1[n] = g[n]x[n-k]
  #y[n-k] = g[n-k]x[n-k] no es invariante
#2:y[n] = suma desde k=n-n0 hasta n+n0 x[k];
  #No es causal:depende de entradas presentes pasadas y futuras
  #y1 es la sumatoria de x1 e y2 es la sumatoria de x2
  #si a la sumatoria de x1 la * a y a la sumatoria de x2 la * 2 y sumamos vemos que es lineal
  #Tiene memoria ya que depende de un estado inicial n0
#3:y[n] = x[n] +2:
  #Es causal: solo depende de entradas presentes
  #y1[n]=x1[n]+2 ; y2[n]=x2[n]+2
  #x[n] = (a*x1[n] + b*x2[n])
  #a*y1[n] + b*y2[n] =? (a*x1[n] + b*x2[n]) + 2
  #a*(x1[n] +2) + b*(x2[n] +2)
  #ax1 + 2a + bx2 + 2b != (a*x1[n] + b*x2[n]) + 2
  #No es lineal
  #Invariante en el tiempo:
  #x[n] ----> y[n]
  #x[n-k] ----> y[n-k]
  #x1[n]+2=x[n-k] +2
  #y1[n]= x1[n]+2 = x[n-k]+2
  #y[n-k] = x[n-k] + 2 es invariante
  #Es sin memoria pq depende unicamente de la entrada en el instante actual
#4:y[n]=n x[n]
  #Es causal: solo depende de entradas presentes
  #x[n] = (a*x1[n] + b*x2[n])
  #y1[n]=n*x1[n] ; y2[n]=n*x2[n]
  #a y1 + b y1 =? n*(ax1 + bx1)
  #a nx1 + b nx2 = n ax1 + n bx1 es Lineal
  #No posee memoria, solo dep de la entrada actual
  #x1[n] = x[n-k]
  #y1[n] = n x1[n] = n x[n-k]
  #y[n-k]= (n-k) x[n-k]  no es invariante en el tiempo
