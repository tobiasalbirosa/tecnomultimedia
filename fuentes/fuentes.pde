PFont font;
void setup(){
  background(255);
  font = createFont("Academy.ttf",48);
  textFont(font, 32);
  textAlign(CENTER,BASELINE);
}
void draw(){
   background(0);
  text("hola",mouseX,mouseY);
}
