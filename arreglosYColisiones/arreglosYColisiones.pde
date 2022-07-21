int [] posicionEnX;
int [] posicionEnY;
int cantidadDeObstaculos;
color colorDelObstaculo [];
void setup() {
  size(400, 400);
  cantidadDeObstaculos = 50;
  posicionEnX = new int [cantidadDeObstaculos];
  posicionEnY = new int [cantidadDeObstaculos];
  colorDelObstaculo = new color[cantidadDeObstaculos];
}
void draw() {
  background(0);
  detectarColisiones(); 
  dibujarObstaculos();
}
void keyPressed() {
  inciarObstaculos();
}
void inciarObstaculos() {
  for (int i =0; i < cantidadDeObstaculos; i++) {
    posicionEnX[i] = floor(random(0, width));
    posicionEnY[i] = floor(random(0, height));
    colorDelObstaculo[i] = color(255, 255, 255);
  }
}
void dibujarObstaculos() {
  push();
  for (int i =0; i < cantidadDeObstaculos; i++) {
    fill(colorDelObstaculo[i]);
    rect(posicionEnX[i], posicionEnY[i], 40, 40);
  }
  pop();
}
void detectarColisiones() {
  for (int i =0; i < cantidadDeObstaculos; i++) {
    if (mouseX > posicionEnX[i] && mouseX < posicionEnX[i] + 40 &&
      mouseY > posicionEnY[i] && mouseY < posicionEnY[i] + 40) {
      colorDelObstaculo[i]  = color(255, 255, 0);
      println(0);
      if (mousePressed) { 
        println(1);
        colorDelObstaculo[i]  = color(0, 0, 255);

        posicionEnX[i]  = -1000;
        posicionEnY[i]  = -1000;
      }
    } else {
      colorDelObstaculo[i]  = color(255);
    }
  }
}
