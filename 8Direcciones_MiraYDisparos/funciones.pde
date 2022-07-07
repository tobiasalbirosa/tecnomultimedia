void mira(float tam) {

  pushStyle();

  // x == a this.posX en cuanto a valores PERO
  // x != a this.posX ya que x es una variable de void mira()
  // y this.posX es una variable global del SKETCH

  line(centro[0], centro[1], mouseX, mouseY);

  circle(mouseX, mouseY, tam);
  popStyle();
}
void calcularCentroDelPersonaje() {
  centro[0] = x;
  centro[1] = y;
}


void dibujarPersonaje(float x, float y, float tam, String palabra) {

  ellipse(x, y, tam, tam);
  text(palabra, x, y);
}


void caminar() {

  if (asciende == true) {
    y -=1 * vel;

    if (izquierda == true) {
      x -=1 * vel;
    }
    if (derecha == true) {
      x +=1 * vel;
    }
  }
  if (desciende == true) {
    y +=1 * vel;
    if (izquierda == true) {
      x -=1 * vel;
    }
    if (derecha == true) {
      x += 1 * vel;
    }
  }

  if (izquierda == true) {
    x -=1 * vel;
  }
  if (derecha == true) {
    x += 1 * vel;
  }
}

void teclaPresioanda() {

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
void teclaSuelta() {

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
