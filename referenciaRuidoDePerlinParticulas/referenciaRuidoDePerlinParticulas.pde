float valorDelRuido;
float escalaDelRuido=0.02;
float ancho, alto;

void setup() {
  size(400, 400);
  ancho = width/200;
  alto = height/200;
  rectMode(CENTER);
}
void draw() {
  if (frameCount > 200) {
    frameCount = 0;
  }
  background(0);
  println(valorDelRuido);
  for (int y = 0; y < height; y+=alto) {
    for (int x = 0; x < width; x+=ancho) {
      valorDelRuido = noise(x*mouseX, y*mouseY);
      stroke((valorDelRuido)*255);
      rect(x*valorDelRuido*frameCount, y*valorDelRuido*frameCount, ancho/2, alto/2);
      // noiseDetail(8,0.65);
      // valorDelRuido = 
      //  noise((mouseX + x + width/2) 
      //  * escalaDelRuido,
      //  (mouseY + y) * escalaDelRuido);
      //  stroke(valorDelRuido * 255);
      //   point(x + width/2, y);
    }
  }
}
