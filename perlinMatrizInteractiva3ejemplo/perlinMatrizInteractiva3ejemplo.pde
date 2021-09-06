float ancho, alto, escalaDelRuido, proporcionDelRuido, valorDelRuido;
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
  escalaDelRuido = 0.002;
  proporcionDelRuido = 0.5;
  detalleDelRuido = 1;
  frameRate(12);
}
void draw() {
  background(255 );
  // escala = map(frameCount, 0, width*height, 0, .01);
  for (int x = 0; x < width; x+=10) {
    for (int y = 0; y < height; y+=10) {
      pushMatrix();
      // noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(escalaDelRuido+x, escalaDelRuido+y);   
      translate(x,y);
      stroke(255*valorDelRuido+x,255,255,255);
      rotate(frameCount*valorDelRuido);
      println("frameCount*valorDelRuido: ", frameCount*valorDelRuido);
      println("radians:", radians(mouseX));
      println("pfs:", frameRate);
      rect(x*valorDelRuido,y*valorDelRuido, 10, 10);
      //noStroke();
      circle(0, 0, 25);
      popMatrix();
    }
    //fill(255, 50);
  }
}
void mousePressed() {
  escalaDelRuido = map(mouseX, 0, width, 0, 0.01);
  detalleDelRuido = int(map(mouseY, 0, height, 0, 120));
}
void keyPressed() {
  proporcionDelRuido=proporcionDelRuido+.1;
  if (proporcionDelRuido >= 1) {
    proporcionDelRuido = 0;
  }
}
