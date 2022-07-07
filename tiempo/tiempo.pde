int segundos;
int segundoInicial;
int segundoReal;

void setup() {

  size(480, 480);
  segundos = 0;
  segundoInicial = second();
}

void draw() {


  background(204);

  println("Segundos desde que ejecuto el sketch: ", obtenerSegundosDesdeYa());
}

void mousePressed() {

  reiniciarSegundos();
}
