void setup() {
  size(500, 500);
  //RGB:
  background(127);
}
void draw() {
  fill(mouseX, 0, 0);
  rect(150, 150, 50, 50);
  fill(0, mouseX, 0);
  rect(150, 250, 50, 50);
  fill(0, 0, mouseX);
  rect(150, 350, 50, 50);
}
