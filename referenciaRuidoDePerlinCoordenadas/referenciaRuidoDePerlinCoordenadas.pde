float valorDelRuido;
float escalaDelRuido = 1;
float escalaDelRuidoAMap = .1;
void setup() {
  size(200, 200);
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(escalaDelRuido);
  if (e == 1.0) {
    escalaDelRuidoAMap+=.01;
    if (
      escalaDelRuidoAMap > 10
      ) {
      escalaDelRuidoAMap = 10;
    }
  } else {
    escalaDelRuidoAMap-=.01;
    if (
      escalaDelRuidoAMap < 0
      ) {
      escalaDelRuidoAMap = 0;
    }
  }
}
void draw() {
  background(0);
  escalaDelRuido = map(escalaDelRuidoAMap, 0, 10, 0, .5);
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      
      valorDelRuido = noise((mouseX+x+frameCount)*escalaDelRuido, (mouseY+y+frameCount) * escalaDelRuido);
      stroke(valorDelRuido * 255);
      
      point(x, y);
      
    }
  }
}
