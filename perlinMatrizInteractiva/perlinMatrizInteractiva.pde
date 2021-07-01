float ancho, alto, escalaDelRuido,valorDelRuido,proporcionDelRuido;
int detalleDelRuido;
void setup() {
  size(200, 200);
  surface.setResizable(true);
  ellipseMode(CENTER);
  rectMode(CENTER);
  colorMode(HSB);
  background(255);
  ancho = width;
  alto = height;
  escalaDelRuido= 0.002;
  proporcionDelRuido = 0.75;
  detalleDelRuido = 120;
}
void draw() {
  escalaDelRuido = map(mouseX, 0, width, 0, 0.001);
  background(255);
  for (int x = 0; x < width; x+=25) {
    for (int y = 0; y < height; y+=25) {
      pushMatrix();
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(x * escalaDelRuido, y* escalaDelRuido);
      translate(width/2, height/2);
      rotate(radians(frameCount/valorDelRuido));
      fill(255*valorDelRuido-y, 255*valorDelRuido+x, 255*valorDelRuido+x);
      noStroke();      
      rect(x, y, 20, 20);
      fill(255, 80);
      popMatrix();
    }
  }
}
void keyPressed() {
  proporcionDelRuido=proporcionDelRuido+.1;
  if (proporcionDelRuido >= .9) {
    proporcionDelRuido = 0;
  }
}
