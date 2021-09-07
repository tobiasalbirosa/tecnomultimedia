void actualizarPantalla(int valor, boolean camino) {
  println(valor, pantalla);
  if (valor == 1) {
    if (pantalla < pantallas.length) {
      if (pantalla != 1 && pantalla != 2) {
        pantalla++;
      } else if (pantalla == 1 && camino) {
        pantalla = 2;
      } else if (pantalla == 1 && camino == false) {
        pantalla = 3;
      } else if (pantalla == 2) {
        pantalla = 4;
      }
    } else if (pantalla >= pantallas.length-2) {
      pantalla = 0;
    }
  } else if (valor == 0) {
   p pantalla--;
    if (pantalla <= 0) {
    }
  }
}
void dibujarPantalla(int pantalla) {
  for (int i = 0; i < pantallas.length; i++) {
    if (pantalla == i) {
      background(20*i);
      text(pantallas[i], width/3, height/2);
    } 
  }
}
