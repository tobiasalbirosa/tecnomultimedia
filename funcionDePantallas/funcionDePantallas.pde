String pantalla;
void setup() {
  frameRate(12);
  pantalla = "pantallaDeInicio";
  size(400, 400);
}
void draw() { }
void mouseClicked() {
  verPantalla(pantalla);
}
