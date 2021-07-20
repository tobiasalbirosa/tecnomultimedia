String estado;
int estadoID;
int tiempo;
float tiempoMapeado;
void setup() {
  estado = "setup";
  estadoID = 0;
  tiempo = height;
  size(200, 200);
  surface.setResizable(true);
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  textMode(CENTER);
  textAlign(CENTER, BASELINE);
}
void draw() {
  tiempo-=4; // Tambien puede ser: 'tiempo = tiempo-10; 'tiempo-=10;'
  tiempoMapeado = map(tiempo, 0, width, 0, 255);
  background(tiempoMapeado);
  if (estadoID == 0) {
    estado = "setup";
  } else if (estadoID == 1) {
    estado = "pantalla1";
  } else if (estadoID == 2) {
    estado = "pantalla2";
  } else if (estadoID == 3) {
    estado = "pantalla3";
  } else if (estadoID == 4) {
    estado = "pantalla4";
  }
  println("El estado es: "+estado+" Fotogramas: "+tiempo);
  if (estado == "setup" && estadoID == 0) {
    rect(width/2, tiempo, 20, 20);
  } else if (estado == "pantalla1" && estadoID == 1) {
    ellipse(width/2, tiempo, 20, 20);
  } else if (estado == "pantalla2" && estadoID == 2) {
    text("Hola 0", width/2, tiempo);
  } else if (estado == "pantalla3" && estadoID == 3) {
    text("Hola 1", width/2, tiempo);
  } else if (estado == "pantalla4" && estadoID == 4) {
    text("Hola 2", width/2, tiempo);
  }
  if (tiempo <= 0) {
    tiempo = height;
    estadoID++;
    if (estadoID > 4) {
      estadoID = 0;
    }
  }
}
