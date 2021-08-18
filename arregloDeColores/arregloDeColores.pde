color [] colores;
int  []  posY;
int cantidad;
void setup() {
  size(400, 400);
  cantidad = width;
  colorMode(HSB);
  colores = new color [cantidad];
  for (int i = 0; i < cantidad; i++) {
    colores[i] = color(random(255), 255, 255);
  }
  surface.setResizable(true);
}
void draw() {
  for (int i = 0; i < cantidad; i++) {
    stroke(colores[i]);
    line(i, 0, i, height);
  }
}
