float ancho, alto, coloresFrios ,escalaDelRuido, valorDelRuido, proporcionDelRuido;
int detalleDelRuido, divisor;

void setup() {
  size(200, 200);
  surface.setResizable(true);
  ellipseMode(CENTER);
  rectMode(CENTER);
  colorMode(HSB);
  background(255);
  ancho = width;
  alto = height;
  escalaDelRuido=0.002;
  proporcionDelRuido=0.75;
  detalleDelRuido=120;
  divisor = 3;
}
void draw() {
  background(255 );
  translate(width/2, height/2);
  rotate(radians(frameCount));
  scale(.5);
  for (int x = 0; x < width; x+=divisor) {
    for (int y = 0; y < height; y+=divisor) {
      pushMatrix();
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(x * escalaDelRuido, y  * escalaDelRuido);
      translate(x, y);
      noStroke();
      translate(-width/2, -height/2);
      rotate(radians(frameCount*valorDelRuido));
      rotate(radians(frameCount));
      coloresFrios = map(valorDelRuido+x,0,255,125,160);
      fill(coloresFrios, 500*valorDelRuido, 500*valorDelRuido, valorDelRuido+y*2);
      ellipse(valorDelRuido*x, valorDelRuido*y, 10*valorDelRuido, 10*valorDelRuido);
      popMatrix();
    }
  }
}
void mouseDragged() {
  escalaDelRuido = map(mouseX, 0, width, 0, 0.05);
  detalleDelRuido = int(map(mouseY, 0, height, 0, 4));
}
void keyPressed() {
  proporcionDelRuido=proporcionDelRuido+.1;
  if (proporcionDelRuido >= 1) {
    proporcionDelRuido = 0;
  }
}
