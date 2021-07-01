PImage paisaje;
PImage insecto;
PImage mont;

int pantalla;
int posY;


void setup() {
  paisaje = loadImage("paisaje.jpg");
  insecto = loadImage("insect.jpg");
  mont = loadImage("mont.jpg");
  pantalla = 0;
  posY = height;
  size(400, 400);
}
void draw() {
  if(pantalla == 0 || pantalla == 2){
      image(mont, 0, 0);
  }else{
   image(paisaje, 0, 0);
  }
    posY=posY-5;
  if (pantalla == 0) {
    image(paisaje, 0, posY, width, height);
  } else if (pantalla == 1) {
    image(insecto, 0, posY, width, height);
  } else if (pantalla == 2) {
    image(mont, 0, posY, width, height);
  }
if (posY <=-(height)) {
    posY = height;
    pantalla++;
  }
  println(pantalla);
  if(pantalla > 2){
  pantalla = 0;
  }
}
void mouseClicked(){
  pantalla = 0;
  posY = height;
}
