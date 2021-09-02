import processing.sound.*;
PImage [] fondo;
PImage [] figura;
SoundFile [] sonidos;
int indiceDeImagen;
void setup() {
  size(400, 400);
  indiceDeImagen = 0;
  fondo = new PImage [4];
  figura = new PImage [2];
   sonidos = new SoundFile [2];
  for (int i = 0; i < 4; i++) {
    fondo[i] = loadImage("./fondos/"+i+".jpg");
  }
  for (int i = 0; i < 2; i++) {
    figura[i] = loadImage("./figuras/"+i+".jpg");
  }
  for (int i = 0; i < 2; i++) {
    sonidos[i] = new SoundFile(this, "./sonidos/"+i+".wav");
  }
}
void draw() {
  background(0);
  image(fondo[indiceDeImagen], 0, 0);

  if (indiceDeImagen % 2 == 0) {
    image(figura[1], width/2, width/2, 50, 50);
  } else {
    image(figura[0], width/2, width/2, 50, 50);
  }
}
void keyPressed() {
  if (key == '+') {
    indiceDeImagen++;
    sonidos[0].stop();
    sonidos[1].stop();
    sonidos[1].play();
  } else if (key == '-') {
    indiceDeImagen--;
    sonidos[0].stop();
    sonidos[1].stop();
    sonidos[0].play();
  }
  if (indiceDeImagen < 0) {
    indiceDeImagen = 3;
  } else if (indiceDeImagen > 3) {
    indiceDeImagen = 0;
  }
  println(indiceDeImagen);
}
