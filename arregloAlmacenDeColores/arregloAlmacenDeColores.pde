color [] colores;
color [] coloresAlmacen;
int  []  posY;
boolean  []  presionado;
int cantidad;
int ancho;
void setup() {
  size(400, 400);
  cantidad = width;
  //colorMode(HSB);
  colores = new color [cantidad];
  coloresAlmacen = new color [cantidad];
  presionado = new boolean [cantidad];
  posY = new int[cantidad];
  ancho = 10;
  for (int i = 0; i < cantidad; i++) {
    colores[i] = color(random(255), random(255), random(255));
    coloresAlmacen[i] = colores[i];
    posY[i] = 0;
  }
}
void draw() {
  background(255);
  for (int i = 0; i < cantidad; i+=ancho) {
    fill(colores[i]);
    rect(i, posY[i], ancho ,height);
  }
}

void mouseMoved() {

  for (int i = 0; i < cantidad; i++) {
    if (mouseX > i && mouseX <  i + ancho && mouseY > posY[i] && mouseY < height) {
      if (colores[i] != color(255)) {
        colores[i] = color(255);
      }
      if (presionado[i]) {
        colores[i] =  coloresAlmacen[i];
      }
    } else {
      colores[i] =  coloresAlmacen[i];
    }
  }
}

void mousePressed() {
  for (int i = 0; i < cantidad; i++) {
    if (mouseX > i && mouseX <  i* + ancho && mouseY > posY[i] && mouseY < height) {

      presionado[i] = !presionado[i];

      colores[i] =  coloresAlmacen[i];

      if (colores[i] != color(255)) {
        colores[i] =  coloresAlmacen[i];
      }
    }
  }
}
