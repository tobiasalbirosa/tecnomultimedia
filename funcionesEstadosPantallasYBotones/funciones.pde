void actualizarPantallas(int _pantalla, boolean _camino) {
  if (_pantalla == 0) {
    pantalla = 1;
  } else if (_pantalla == 1) {
    if (_camino) {
      pantalla = 2;
    } else {
      pantalla = 3;
    }
  } else  if (_pantalla == 2) {
    pantalla = 4;
  } else if (_pantalla == 3) {
    pantalla = 4;
  } else if (_pantalla == 4) {
    pantalla = 5;
  } else if (_pantalla == 5) {
    pantalla = 0;
  }
}
void dibujarPantallas(int pantalla) {
  println(pantallas[pantalla]);
  if (pantalla == 1) {
    miBotonRectangular(20, 20, 20, 20, 0);
    miBotonRectangular(width-40, 20, 20, 20, 1);
  }
}
void miBotonRectangular(float x, float y, float tamX, float tamY, int ID) {
  if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY ) {
    fill(127);
    if (mousePressed) {
      fill(0);
      println("Click en ID: ", ID);
      if (ID == 0 && pantalla == 1) {
        actualizarPantallas(pantalla, true);
      } else if (ID == 1  && pantalla == 1) {
        actualizarPantallas(pantalla, false);
      }
    }
  } else {
    fill(255);
  }
  rect(x, y, tamX, tamY);
}
