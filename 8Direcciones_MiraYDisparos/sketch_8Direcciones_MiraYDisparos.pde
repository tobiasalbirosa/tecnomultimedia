/*

 Variables de mi personaje:
 
 Posicion en X: float x
 Posicion en Y: float y
 Tamaño de personaje: float tam
 Velocidad de movimiento: float vel
 Centro del personaje: float [] centro;
 
 Variables de mis "particulas":
 
 Posicion en X: float partX
 Posicion en Y: float partY
 Tamaño de personaje: float partTam
 Velocidad de movimiento: float partVel
 
 */

float centro[];
float x, y, tam, vel;
boolean asciende, desciende, izquierda, derecha;

void setup() {

  size(400, 400);
  tam = width/8;
  vel = 2;
  x = width/2;
  y = height/2;
  centro = new float[2];
  ellipseMode(CENTER);
  textSize(72);
}

void draw() {

  background(127);
  personaje();
}

void personaje() {
  caminar();
  calcularCentroDelPersonaje();
  calcularAnguloDeMira();
  dibujarPersonaje(x, y, tam, "");
  mira(tam);
  viviendo();
}
void mousePressed() {
  println(angulo);
  nacer();
}
void keyPressed() {
  teclaPresioanda();
}
void keyReleased() {
  teclaSuelta();
}
