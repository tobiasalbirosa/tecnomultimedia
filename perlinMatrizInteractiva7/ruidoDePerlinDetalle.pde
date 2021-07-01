float ancho, alto, escalaDelRuido,valorDelRuido, proporcionDelRuido;
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
  escalaDelRuido=0.002;
  proporcionDelRuido =0.75;
}
void draw() {
  escalaDelRuido = map(frameCount*10, 0, width, 0, .05);
  detalleDelRuido = int(map(mouseY, 0, height, 0, 120));
  if (frameCount > 300) {
    frameCount = 0;
  }
  background(255);
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(x * escalaDelRuido, y* escalaDelRuido);
      stroke(255*valorDelRuido-y,255*valorDelRuido,255*valorDelRuido,255*valorDelRuido);
      point(x, y);
    }
  }
}
void keyPressed() {
  proporcionDelRuido+=0.1;
  if(proporcionDelRuido >= 1){
    proporcionDelRuido = 0;
  }
}
