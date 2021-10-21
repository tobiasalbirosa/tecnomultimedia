Celda [][] celdas;
void setup() {
  size(400, 400);
  celdas = new Celda[8][8];
  PImage celda = loadImage("pasto.jpg");
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      celdas[i][j] = new Celda(celda, i*width/8, j*width/8, width/8);
    }
  }
}
void draw() {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 8; j++) {
      celdas[i][j].dibujarCelda();
    }
  }
}
