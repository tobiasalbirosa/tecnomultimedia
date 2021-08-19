PImage [] imagenes;
int indiceDeImagen;
public void setup() {
  size(400, 400);
  indiceDeImagen = 0;
  imagenes = new PImage [4];
  for (int i = 0; i < 4; i++) {
    imagenes[i] = loadImage(i+".jpg");
    println( imagenes[i].width, imagenes[i].height);
  }
  surface.setResizable(true);
}
void draw() {
  background(0);
  //println(imagenes[indiceDeImagen].width,imagenes[indiceDeImagen].height);
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
  surface.setSize(imagenes[indiceDeImagen].width, imagenes[indiceDeImagen].height);
  println(indiceDeImagen);
}
