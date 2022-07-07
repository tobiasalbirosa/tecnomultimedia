float angulo, longitud, coordX, coordY;

void calcularAnguloDeMira() {

  angulo = map(atan2(mouseY-height/2, mouseX-width/2), -PI, PI, 0, 360);

  longitud = int(dist(x, y, mouseX, mouseY));
}
