String pantalla;
PImage diagrama;
void setup() {
  size(400, 400);
  pantalla = "pantalla1";
  textSize(24);
  diagrama = loadImage("diagrama.png");
  diagrama.resize(width,height);
}
void draw() {
  background(0);
  image(diagrama, 0,0);
  fill(0);
  text(pantalla, mouseX, mouseY);
}
void keyPressed() {
  println(keyCode);
  if (pantalla == "pantalla1" && keyCode == RIGHT) {
    pantalla = "pantalla2";
  } else  if (pantalla == "pantalla2" && keyCode == RIGHT) {
    pantalla = "pantalla3b";
  } else  if (pantalla == "pantalla2" && keyCode == LEFT) {
    pantalla = "pantalla3a";
  } else  if (pantalla == "pantalla3a" && keyCode == RIGHT || pantalla == "pantalla3b" && keyCode == RIGHT) {
    pantalla = "pantalla4";
  } else  if (pantalla == "pantalla4") {
    pantalla = "pantalla1";
  }
  println(pantalla);
}
