float ancho;
float alto;
float distancia;
void setup() {
  size(400, 400);
  surface.setResizable(true);
  rectMode(CENTER);
  ancho = width/10;
}
void draw() {
  background(0);
  for (float i = ancho; i < width; i+=ancho) {
    distancia = dist(width/2, 0, i, 0);
    alto = map(distancia, 0, height/2, height/2, 0);
    if (dist(mouseX, height/2, i, height/2) < ancho/2) {
      alto = alto+mouseY;
    }
    if (dist(width/2, height/2, i, height/2) > ancho/2) {
      rect(i, height/2, ancho/2, alto/2);
    }
  }
}
void keyPressed() {
  if (key == '-') {
    ancho = ancho/2;
    if (ancho <= 5) {
      ancho = 5;
    }
  } else if (key == '+') {
    ancho = ancho*2;
    if (ancho >= width/4) {
      ancho =  width/4;
    }
  }
}
