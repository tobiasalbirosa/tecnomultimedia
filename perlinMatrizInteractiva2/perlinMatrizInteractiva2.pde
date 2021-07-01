float ancho, alto, escalaDeRuido, valorDeRuido, proporcionDeRuido;
int detalleDeRuido;
void setup() {
  size(200, 200);
  surface.setResizable(true);
  ellipseMode(CENTER);
  rectMode(CENTER);
  colorMode(HSB);
  background(255);
  ancho = width;
  alto = height;
  escalaDeRuido=0.002;
  proporcionDeRuido=0.01;
  detalleDeRuido = 1;
}
void draw() {
  background(255 );
  for (int x = 0; x < width; x+=10) {
    for (int y = 0; y < height; y+=10) {
      pushMatrix();
      noiseDetail(detalleDeRuido, proporcionDeRuido);
      valorDeRuido = noise(x * escalaDeRuido,y * escalaDeRuido);
      translate(x, y);
      stroke(255*valorDeRuido+x, 500*valorDeRuido, 500*valorDeRuido, valorDeRuido*y/2);
      rotate(radians(frameCount*valorDeRuido));
      line(-valorDeRuido*x, -valorDeRuido*y, valorDeRuido*x, valorDeRuido*y);
      popMatrix();
    }
  }
}
void mouseDragged() {
  escalaDeRuido = map(mouseX, 0, width, 0, 0.01);
  detalleDeRuido = int(map(mouseY, 0, height, 0, 120));
}
void keyPressed() {
  proporcionDeRuido=proporcionDeRuido+.1;
  if (proporcionDeRuido >= 1) {
    proporcionDeRuido = 0;
  }
}
