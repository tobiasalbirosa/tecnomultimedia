float tamYCant;
int I;
int J;
int wT;
int hT;
boolean vuelve = false;
void setup() {
  size(240, 240);
  textAlign(LEFT);
  textSize(8);
  colorMode(HSB);
  tamYCant = 1;
  surface.setResizable(true);
  println("Grilla dinámica: ");
  println("Presionar las taclas -, + o espacio");
  background(255);
}
void draw() {
  wT = round(width/tamYCant);
  hT = round(height/tamYCant);
  fill(255);
  noStroke();
  rect(0, 0, width, height);
  for (int j = 0; j < tamYCant; j++) {
    for (int i = 0; i < tamYCant; i++) {
      I = round(i*width/tamYCant);
      J = round(j*height/tamYCant);
      fill((i*j)/2, 200, 200, i+j);
      if (dist(0, 0, I, J) < 250 && dist(0, 0, I, J) > 150) {
        wT = wT*3;
        hT = wT*3;
        ellipse(I, J, wT, hT);
      }
      wT = round(width/tamYCant);
      hT = round(height/tamYCant);
    }
  }
  if (frameCount > width*1.5) {
    frameCount = 2;
    vuelve = !vuelve;
  }
  if (vuelve) {
    tamYCant=tamYCant-.1;
    if (tamYCant < 1) {
      tamYCant = 1;
    }
  } else {
    tamYCant=tamYCant+.1;
    if (tamYCant > width) {
      tamYCant = width;
    }
  }
}
void mousePressed() {
  surface.setSize(round(height), round(height));
}
void keyPressed() {
  if (key=='+') {
    tamYCant=tamYCant+1;
  } else if (key=='-') {
    tamYCant=tamYCant-1;
  } else if (key==' ') {
    frameCount=width/2;
  }
  if (tamYCant < 1) {
    tamYCant = 1;
  } else  if (tamYCant > width) {
    tamYCant = width;
  }
  println("Variable de tamaño y cantidad: ", tamYCant);
}
