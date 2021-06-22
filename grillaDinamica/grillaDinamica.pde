int tamYCant = 1;
void setup() {
  size(240, 240);
  surface.setResizable(true);
  textAlign(LEFT, TOP);
  textSize(10);
  println("Grilla dinámica: ");
  println("Presionar las taclas -, + o espacio");
}
void draw() {
  background(0);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      if ((i+j) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      rect(i*width/tamYCant, j*width/tamYCant, width/tamYCant, width/tamYCant);
      fill(127);
      text(i*width/tamYCant +"/"+ j*width/tamYCant, 
        i*width/tamYCant, 
        j*height/tamYCant);
    }
  }
}
void keyPressed() {
  if (key=='+') {
    tamYCant=tamYCant+1;
  } else if (key=='-') {
    tamYCant=tamYCant-1;
  } else if (key==' ') {
    tamYCant=width/2;
  }
  if (tamYCant < 1) {
    tamYCant = 1;
  } else  if (tamYCant > width) {
    tamYCant = width;
  }
  println(tamYCant);
}
