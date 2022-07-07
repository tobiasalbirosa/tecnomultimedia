// tam = tamaño
float posX, posY, tamPersonaje, vel;
boolean asciende, desciende, izquierda, derecha;

void setup() {

  size(400, 400);
  tamPersonaje = width/8;
  vel = 2;
}

void draw() {

  background(127);

  caminar();
  dibujarPersonaje(posX, posY, tamPersonaje);
  mira(posX, posY, tamPersonaje);
}

void keyPressed() {

  if (key == 'W' || key == 'w') {
    asciende = true;
  }
  if (key == 'S'  || key == 's') {

    desciende = true;
  }
  if (key == 'A' || key == 'a') {
    izquierda = true;
  }
  if (key == 'D' || key == 'd') {
    derecha = true;
  }
}
void keyReleased() {

  if (key == 'W' || key == 'w') {
    asciende = false;
  }

  if (key == 'S'  || key == 's') {

    desciende = false;
  }

  if (key == 'A' || key == 'a') {

    izquierda = false;
  }

  if (key == 'D' || key == 'd') {

    derecha = false;
  }
}
