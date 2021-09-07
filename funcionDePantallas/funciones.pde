boolean camino;
void verPantalla(String estado) {
  if (estado == "pantallaDeInicio") {
    background(255,0,0);
    pantalla = "segundaPantalla";
  } else if (estado == "segundaPantalla") {
    background(127);
    camino = !camino;
    pantalla = camino ? "terceraPantallaA" : "terceraPantallaB";
  } else if (estado == "terceraPantallaA") {
    background(200);
    pantalla = "cuartaPantalla";
  } else if (estado == "terceraPantallaB") {
    background(127);
    pantalla = "cuartaPantalla";
  } else if (estado == "cuartaPantalla") {
    background(200);
    pantalla = "pantallFinal";
  } else if (estado == "pantallFinal") {
    background(220);
    pantalla = "pantallaDeInicio";
  }
  text(estado, width/2, height/2);
}
