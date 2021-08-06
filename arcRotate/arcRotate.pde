int diam = 50;
void setup() {
  size(360, 360);
  shapeMode(CENTER);
}
void draw() {
  background(0);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  stroke(255);
  pushMatrix();
  //TRASLADAMOS NUESTRO PUNTO X, Y
  translate(width/2, height/2);
  /*ROTAMOS SIN AFECTAR A NADA DE LO QUE ESTE AFUERA
  DE NUESTR0 PUSHMATRIX
  */
  rotate(radians(mouseX));
  arc(0, 0, diam, diam, HALF_PI, TWO_PI);
  popMatrix();
}
