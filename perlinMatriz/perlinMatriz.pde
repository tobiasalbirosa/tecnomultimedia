float ancho, alto, escalaDelRuido, valorDelRuido, proporcionDelRuido;
int detalleDelRuido;
void setup() {
  size(200, 200);
  ellipseMode(CENTER);
  rectMode(CENTER);
  colorMode(HSB);
  background(255);
  ancho = width;
  alto = height;
  escalaDelRuido=.002;
  surface.setResizable(true);
}
void draw() {
  escalaDelRuido = map(frameCount, 0, width, 0, .05);
  background(255);
  for (int x = 0; x < width; x+=10) {
    for (int y = 0; y < height; y+=10) {
      pushMatrix();
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(x * escalaDelRuido, y* escalaDelRuido);
      stroke(255*valorDelRuido-x, 255*valorDelRuido, 255*valorDelRuido, 255*valorDelRuido);
      rotate(radians(valorDelRuido));
      rect(x, y, 20, 20);
      popMatrix();
    }
  }
}
void mouseClicked() {
  detalleDelRuido = int(map(mouseY, 0, height, 0, 120));
}
void keyPressed() {
  proporcionDelRuido=proporcionDelRuido+.1;
  if (proporcionDelRuido >= .9) {
    proporcionDelRuido = 0;
  }
}
