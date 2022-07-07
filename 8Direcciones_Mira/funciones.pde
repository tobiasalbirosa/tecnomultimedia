void mira(float x, float y, float tam) {

  pushStyle();

  // x == a this.posX en cuanto a valores PERO
  // x != a this.posX ya que x es una variable de void mira()
  // y this.posX es una variable global del SKETCH

  line(x+tam/2, y+tam/2, mouseX, mouseY);
  circle(mouseX, mouseY, tam);
  popStyle();
}


void dibujarPersonaje(float x, float y, float tam) {

  rect(x, y, tam, tam);
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
