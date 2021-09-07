String [] pantallas;
int pantalla;
boolean camina;
void setup() {
  size(400, 400);
  pantallas = loadStrings("./pantallas/pantallas.txt");
  println(pantallas.length);
  pantalla = 0;
}
void draw() {
  background(0);
  dibujarPantallas(pantalla);
}
void keyPressed() {
  if (keyCode == LEFT && pantalla != 1) {
    actualizarPantallas(pantalla, true);
  } else if (keyCode == RIGHT  && pantalla != 1) {
    actualizarPantallas(pantalla, false);
  }
}
void mouseClicked() {
  if (pantalla == 1) {
  }
}
