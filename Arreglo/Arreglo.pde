/*
 * Arreglo
 
 Un arreglo es una lista de información (data)
 
 Cada pieza de información en el arreglo 
 está identificada por un número de índice
 representando esta posición en el arraglo.
 
 Los arreglos son basados en cero, 
 lo que significa que 
 el primer elmemento del arreglo es [0],
 el segundo elemento es [1],
 y así sucesivamente.
 
 En este ejemplo, un arreglo llamado "coseno"
 está creado y llenado con todos los valores del coseno
 relativo al tamaño de la pantalla.
 
 */

float[] coseno; 
float valores;
int y1;
int y2;
int ancho;
float alto;
void setup() {
  size(360, 360);
  coseno = new float[width];
  for (int i = 0; i < width; i++) {
    valores = map(i, 0, width, 0, PI);
    coseno[i] = abs(cos(valores));
    println(coseno[i]);
  }
  y1 = 0;
  y2 = height;
  ancho = width/20;
  frameRate(12);
  textAlign(CENTER);
  rectMode(CENTER);
}
void draw() {

  background(255);
  for (int i = 0; i < width; i++) {
    /*
    Pintamos cada linea en relacion al valor guardado del 
     coseno de cada uno de los valores del ancho de la pantalla
     accedemos a los valores del arreglo coseno[] a traves de sus
     incides, de esta manera, dentro de un for, tomando i como indice:
     
     'coseno[i]'
     
     */
    stroke(coseno[i]*255);
    line(i, y1, i, y2);
    stroke(255, 0, 0);
    point(i,  coseno[i]*100);
  }
}


/*

 Diferentes maneras de representar el mismo arreglo 
 
 fill(0, 255, 0);
 triangle(i, height/2+coseno[i]*50, i, height/2+coseno[i]*50+ancho+100, i+ancho, height/2+coseno[i]*50-ancho-100);
 fill(255, 255, 0); 
 square(i, height/2+coseno[i]*50, ancho*2);
 fill(255, 0, 255);
 circle(i, height/2+coseno[i]*50, ancho*2);
 fill(255);
 text("hola", i, height/2+coseno[i]*50);
 
 */
