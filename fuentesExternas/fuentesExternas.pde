PFont externa;
PFont interna;
boolean estado;
void setup() {
  externa = createFont("KGWhatATime.ttf", 24);
  interna = loadFont("AvenirNext-UltraLight-48.vlw");
  textFont(externa);
}
void draw() {
  background(0);
  if (estado) { // estado == true
    textFont(externa);
  } else {
    textFont(interna);
  }
  text("hola", mouseX, mouseY);
}
void mousePressed() {
  estado = !estado;
  println(estado);
}
