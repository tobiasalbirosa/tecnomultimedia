int estado;
void setup() {
  size(400, 400);
  estado = 0;
}
void draw() { }
void keyPressed() {
  if (keyCode == RIGHT) {
    actualizarEstado(1);
  } else if (keyCode == LEFT) {
    actualizarEstado(0);
  }
}
