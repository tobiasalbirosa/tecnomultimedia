float posX, posY, vel;
boolean asciende, desciende, izquierda, derecha;

void setup() {
  size(400, 400);
  vel = 2;
}

void draw() {
  background(0);
  caminar();
  rect(posX, posY, 20, 20);
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



void caminar() {

  if (asciende == true) {
    posY -=1 * vel;

    if (izquierda == true) {
      posX -=1 * vel;
    }
    if (derecha == true) {
      posX +=1 * vel;
    }
  }
  if (desciende == true) {
    posY +=1 * vel;
    if (izquierda == true) {
      posX -=1 * vel;
    }
    if (derecha == true) {
      posX += 1 * vel;
    }
  }

  if (izquierda == true) {
    posX -=1 * vel;
  }
  if (derecha == true) {
    posX += 1 * vel;
  }
}
