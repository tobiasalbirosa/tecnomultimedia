int tamYCant;
int I;
int J;
int wT;
int hT;
boolean vuelve = false;
void setup() {
  size(240, 240);
  surface.setResizable(true);
  textAlign(LEFT);
  textSize(10);
  println("Grilla dinámica: ");
  println("Presionar las taclas -, + o espacio");
  tamYCant = 1;
  colorMode(HSB);
  noStroke();
}
void draw() {
  background(255);
  wT = round(width/tamYCant);
  hT = round(height/tamYCant);
  for (int j = 0; j < height; j++) {
    for (int i = 0; i < width; i++) {
      I = round(i*width/tamYCant);
      J = round(j*height/tamYCant);
      fill(i*j, 255, 255);
      if ((i+j) % 2 == 0) {
      } else if ((i+j) % 2 == 1) {
        //  fill(I, 255, 255, i*20);
      }
      rect(I, J, wT, hT);
      if ((i+j) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      //  text(I +"/"+ J, I, J);
    }
  }
  if (frameCount > width/10) {
    frameCount = 2;
    vuelve = !vuelve;
  }
  if (vuelve) {
    tamYCant--;
    if (tamYCant < 1) {
      tamYCant = 1;
    }
  } else {
    tamYCant++;
    if (tamYCant > width) {
      tamYCant = width;
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
  println("Variable de tamaño y cantidad: ", tamYCant);
}
