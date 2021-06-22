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
  tamYCant = 30;
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
      fill((i*j)/2, 200, 200);
      ellipse(I, J, wT, hT);
    }
  }
}
