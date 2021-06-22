float tamYCant;
int I;
int J;
int wT;
int hT;
void setup() {
  size(240, 240);
  textAlign(LEFT);
  textSize(8);
  colorMode(HSB);
  tamYCant = 30;
  surface.setResizable(true);
  background(255);
}
void draw() {
  background(255);
  wT = round(width/tamYCant);
  hT = round(height/tamYCant);
  fill(255);
  noStroke();
  rect(0, 0, width, height);
  for (int j = 0; j < tamYCant; j++) {
    for (int i = 0; i < tamYCant; i++) {
      I = round(i*width/tamYCant);
      J = round(j*height/tamYCant);
      fill((i*j)/PI, 200, 200);
      if (dist(mouseX, mouseY, I, J) < 30) {
        if (mousePressed) {
          ellipse(random(I-15, I+15), 
            random(J-15, J+15), 
            random(wT, wT+15), 
            random(hT, hT+15));
        }
      } else 
      {
        fill((i*j)/2, 200, 200);
        ellipse(I, J, wT, hT);
      }
    }
  }
}
