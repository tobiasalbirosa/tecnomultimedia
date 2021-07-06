float valorDelRuido;
float escalaDelRuido=0.02;
float ancho, alto;
float posX, posY;
float opacidad;
int animacion;
boolean click;
void setup() {
  size(400, 400);
  ancho = width/200;
  alto = height/200;
  rectMode(CENTER);
  click = false;
  animacion = 60;
}
void draw() {
  if (animacion > 220 && click) {
    animacion = 0;
    click = false;
  } else if (click) {
    animacion+=3;
  }
  background(0);
  println(valorDelRuido);
  for (int y = 0; y < height/80; y++) {
    for (int x = 0; x < width/80; x++) {
      pushMatrix();
      translate(posX, posY);
      rotate(radians(-270*valorDelRuido));
      if (click) {
        valorDelRuido = noise(x*posX, y*posY);
        opacidad = map(animacion, 0, 60, 255, 0);
        stroke((valorDelRuido)*255, opacidad);
        fill(255, opacidad);
        rect(x*valorDelRuido*animacion, y*valorDelRuido*animacion, ancho*2, alto*2);
      } else {
        opacidad = 0;
        valorDelRuido = 0;
      }
      popMatrix();
    }
  }
}
void mousePressed() {
  if (click == false) {
    posX = mouseX;
    posY = mouseY;
    click = !click;
  }
}
