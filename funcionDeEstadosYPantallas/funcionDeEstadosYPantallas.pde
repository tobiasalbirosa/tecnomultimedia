String pantallas [];
int pantalla;
void setup() {
  size(400, 400);
  pantallas =  loadStrings("./pantallas/pantallas.txt");
  pantalla = 0;
}
void draw() {
  dibujarPantalla(pantalla);
  if (pantalla == 1) {
    stroke(255);
    line(width/2, 0, width/2, height);
  }
}
void mouseClicked() {
  if (mouseX < width/2 && pantalla == 1) {
    actualizarPantalla(1, true);
  }
  if (mouseX > width/2 && pantalla == 1) {
    actualizarPantalla(1, false);
  }
}
void keyPressed() {
  if (keyCode == RIGHT && pantalla != 1) {
    actualizarPantalla(1, false);
  } else if (keyCode == LEFT && pantalla != 1) {
    actualizarPantalla(0, false);
  }
}
