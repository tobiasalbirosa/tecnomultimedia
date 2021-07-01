float ancho,alto,escalaDelRuido, valorDelRuido, proporcionDelRuido;
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
}
void draw() {
  background(255 );
   // escala = map(frameCount, 0, width*height, 0, .01);
    if(frameCount  > width*height){
    //  frameCount = 0;
    }
  for (int x = 0; x < width; x+=10) {
    for (int y = 0; y < height; y+=10) {
      pushMatrix();
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(x * escalaDelRuido, y  * escalaDelRuido);
      translate(x, y);
      stroke(255*valorDelRuido+x, 500*valorDelRuido, 500*valorDelRuido, 500*valorDelRuido-y/2);
      rotate(radians(frameCount*valorDelRuido));
      rect(valorDelRuido*x, valorDelRuido*y,10,10);
      //noStroke();
      //ellipse(x, y, 5, 5);
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
