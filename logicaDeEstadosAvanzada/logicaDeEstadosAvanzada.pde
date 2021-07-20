String estado;
PFont miFuenteDeProcessing;
PFont miFuenteDeInternet;
int estadoID;
int tiempo;
float tiempoMapeado;
void setup() {
  size(200, 200);
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  textMode(CENTER);
  textAlign(CENTER, BASELINE);
  surface.setResizable(true);
  miFuenteDeProcessing = loadFont("Stencil-24.vlw");
  estado = "setup";
  estadoID = 0;
  tiempo = height;
  textFont(miFuenteDeProcessing);
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
    text("Pantalla 0", width/2, tiempo);
  } else if (estado == "pantalla1" && estadoID == 1) {
    text("Pantalla 1", width/2, tiempo);
  } else if (estado == "pantalla2" && estadoID == 2) {
    text("Pantalla 2", width/2, tiempo);
  } else if (estado == "pantalla3" && estadoID == 3) {
    text("Pantalla 3", width/2, tiempo);
  } else if (estado == "pantalla4" && estadoID == 4) {
    text("Pantalla 4", width/2, tiempo);
  }

  if (tiempo <= 0) {
    tiempo = height;
    estadoID++;
    if (estadoID > 4) {
      estadoID = 0;
    }
  }
}
