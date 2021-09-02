String [] lineas;
int indiceDeTexto;
void setup() {
  lineas =  loadStrings("texto.txt");
  size(400, 400);
  println(lineas.length);
  indiceDeTexto = 0;
  textSize(28);
}
void draw() {
  background(0);
  text(lineas[indiceDeTexto], mouseX, mouseY);
}
void mouseClicked() {
  if (indiceDeTexto < lineas.length-1) {
    indiceDeTexto++;
  } else {
    indiceDeTexto = 0;
  }
}
