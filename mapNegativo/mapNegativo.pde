float posX;
void setup() {
size(400,400);
}
void draw() {
  background(0);
 posX = map(mouseX,0,width,-200, width+200);
 rect(posX,height/2,30,30);
}
