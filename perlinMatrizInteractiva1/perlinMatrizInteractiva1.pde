float ancho, alto, escalaDelRuido, mapOp, proporcionDelRuido, opacidad, radial, valorDelRuido;
int detalleDelRuido, divisor;
void setup() {
  size(400, 400);
  surface.setResizable(true);
  ellipseMode(CENTER);
  rectMode(CENTER);
  colorMode(HSB);
  background(255);
  ancho = width;
  alto = height;
  escalaDelRuido=0.015;
  proporcionDelRuido=0.1;
  detalleDelRuido=height/10;  
  opacidad=255;
  divisor = 50;
}
void draw() {
  background(0);
  scale(.6);
  translate(width/4, height/4);
  fill(255);
  circle(width/2, height/2, radial);
  for (int x = 0; x < width; x+=width/divisor) {
    for (int y = 0; y < height; y+=height/divisor) {
      pushMatrix();
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise(x * escalaDelRuido, y * escalaDelRuido);
      translate(x, y);
      /*
      if (height >= width) {
       mapOp = map(y, 0, height, 0, opacidad);
       if (mapOp > opacidad/2) {
       mapOp = map(y, 0, height, opacidad, 0);
       }
       } else {
       mapOp = map(x, 0, width, 0, opacidad);
       if (mapOp > opacidad/2) {
       mapOp = map(x, 0, width, opacidad, 0);
       }
       }
       */
      radial = dist(x, y, width/2, height/2);
      mapOp = map(radial, 0, (width/divisor)*(height/divisor), 255, 0);
      stroke(valorDelRuido+x, valorDelRuido*510, valorDelRuido*510, mapOp);
      rotate(radians(frameCount*valorDelRuido));
      rotate(radians(frameCount*2));
      line(-valorDelRuido*x, -valorDelRuido*y, valorDelRuido*x, valorDelRuido*y);
      popMatrix();
    }
  }
}
void mouseDragged() {
  escalaDelRuido = map(mouseX, 0, width, 0, 0.05);
  detalleDelRuido = int(map(mouseX, 0, width, 0, width/2));
  opacidad = map(mouseY, 0, height, 0, 255);
}
void keyPressed() {
  proporcionDelRuido=proporcionDelRuido+0.06;
  if (proporcionDelRuido >= .9) {
    proporcionDelRuido = 0;
  }
}
