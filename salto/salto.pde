Objeto objeto;
void setup() {
  size(400, 400);
  rectMode(CENTER);
  objeto = new Objeto(width/10, height-width/10, width/10, 5);
}
void draw() {
  background(0);
  objeto.dibujar();
}
