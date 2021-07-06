float valorDelRuido;
float escalaDelRuido = 1;
float escalaDelRuidoToMap = .1;
int detalleDelRuido;
int detalleDelRuidoToMap;
float proporcionDelRuido;
float proporcionDelRuidoToMap;
void setup() {
  size(200, 200);
  detalleDelRuido = 1;
}
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(escalaDelRuido);
  if (e == 1.0) {
    escalaDelRuidoToMap+=.01;
    if (
      escalaDelRuidoToMap > 10
      ) {
      escalaDelRuidoToMap = 10;
    }
  } else {
    escalaDelRuidoToMap-=.01;
    if (
      escalaDelRuidoToMap < 0
      ) {
      escalaDelRuidoToMap = 0;
    }
  }
}
void keyPressed() {
  if (key == 'a') {
    println("Sumando detalle de ruido: ", detalleDelRuidoToMap);
    detalleDelRuidoToMap++;
    if (detalleDelRuidoToMap > width) {
      detalleDelRuidoToMap = width;
    }
  }
  if (key == 's') {
    println("Restando detalle de ruido: ", detalleDelRuidoToMap); 
    detalleDelRuidoToMap--;
    if (detalleDelRuidoToMap < 0) {
      detalleDelRuidoToMap = 0;
    }
  }
  if (key == 'd') {
    println("Sumando proporcion de efecto: ", proporcionDelRuidoToMap);  
    proporcionDelRuidoToMap++;
    if (proporcionDelRuidoToMap > width) {
      proporcionDelRuidoToMap = width;
    }
  }
  if (key == 'f') {
    println("Sumando proporcion de efecto: ", proporcionDelRuidoToMap);    
    proporcionDelRuidoToMap--;
    if (proporcionDelRuidoToMap < 0) {
      proporcionDelRuidoToMap = 0;
    }
  }
}
void draw() {
  escalaDelRuido = map(escalaDelRuidoToMap, 0, 10, 0, .5);
  detalleDelRuido = int(map(detalleDelRuidoToMap, 0, width, 0, 5));
  proporcionDelRuido = map(proporcionDelRuidoToMap, 0, width, 0, 1);
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      noiseDetail(detalleDelRuido, proporcionDelRuido);
      valorDelRuido = noise((mouseX+x)*escalaDelRuido, (mouseY+y) * escalaDelRuido);
      stroke(valorDelRuido * 255);
      point(x, y);
    }
  }
}
