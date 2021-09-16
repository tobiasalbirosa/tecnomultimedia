void miBotonRectangular(float x, float y, float ancho, float alto, int ID) {
  if (mouseX > x && mouseX < x+ancho &&
    mouseY > y && mouseY < y + alto) {
    if (mousePressed) {
      if (ID == 0) {
        background(255, 0, 0);
      } else if (ID == 1) {
        background(0, 255, 0);
      } else if (ID == 2) {
        background(0, 0, 0);
      }
      fill(255);
      println(ID);
    } else {
      fill(180);
    }
  } else {
    fill(120);
  }  
  rect(x, y, ancho, alto);
}
