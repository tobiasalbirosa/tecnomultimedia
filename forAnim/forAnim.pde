float ancho;
float alto;
float varModif = 1;
void setup() {
  size(400, 400);
  ancho = width/10;
  alto = height/10;
  noStroke();
}
void draw() {
  background(0);
  for (int j = 0; j < 10; j++) {
    for (int i = 0; i < 10; i++) {
      varModif = (mouseY*i) + (mouseX*j);
      fill(varModif);
      rect(i*ancho, alto*j, ancho, alto);
    }
  }
}
