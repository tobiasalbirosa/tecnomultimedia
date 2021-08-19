PImage [] imagenes;
int indiceDeImagen;
void setup() {
  size(400, 400);
  indiceDeImagen = 0;
  imagenes = new PImage [4];
  for (int i = 0; i < 4; i++) {
    imagenes[i] = loadImage(i+".jpg");
  }
}
void draw() {
  background(0);
  image(imagenes[indiceDeImagen], 0, 0);
}
void keyPressed() {
  if (key == '+') {
    indiceDeImagen++;
  } else if (key == '-') {
    indiceDeImagen--;
  }
  if (indiceDeImagen < 0) {
    indiceDeImagen = 3;
  } else if (indiceDeImagen > 3) {
    indiceDeImagen = 0;
  }
  println(indiceDeImagen);
}
