float ancho, alto, coloresCalidos, escalaDelRuido, valorDelRuido, opacidad, 
  proporcionDelRuido, radial;
int detalleDelRuido, divisor, semilla;
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
  divisor = 5;
}
void draw() {
  background(0 );
  // rotate(radians(frameCount));
  scale(.25);
  translate(width*2, height*3.5);
  fill(15*valorDelRuido, 255*valorDelRuido, 255*valorDelRuido,120);
  circle(0, -height, 200);

  rotate(radians(-135));

  for (int x = 0; x < width; x+=divisor) {
    for (int y = 0; y < height; y+=divisor) {
      pushMatrix();
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(x * escalaDelRuido, y  * escalaDelRuido);
      translate(x, y);
      noStroke();
      // rotate(radians(frameCount));
      coloresCalidos = map(x+y*valorDelRuido, 0, 255, 0, 20);
      radial = dist(x, y, width/2, height/2);
      opacidad = map(radial, 0, 100, 255, 0);
      fill(coloresCalidos, 500*valorDelRuido, 500*valorDelRuido, opacidad);
      ellipse(valorDelRuido*x, valorDelRuido*y, 
        2*divisor*valorDelRuido, 2*divisor*valorDelRuido);
      popMatrix();
    }
  }

  semilla++;
  noiseSeed(semilla);
  if (semilla > 100) {
    semilla = 0;
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
