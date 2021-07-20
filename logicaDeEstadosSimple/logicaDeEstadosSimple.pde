String estado;
int estadoID;
int tiempo;
float tiempoMapeado;
void setup() {
  estado = "setup";
  estadoID = 0;
  tiempo = height;
  size(200, 200);
}
void draw() {
  background(0);
  tiempo-=4; // Tambien puede ser: 'tiempo = tiempo-10; 'tiempo-=10;'
  if (estadoID == 0) {
    estado = "setup";
  } else if (estadoID == 1) {
    estado = "pantalla1";
  } else if (estadoID == 2) {
    estado = "pantalla2";
  }
  if (estado == "setup" && estadoID == 0) {
    rect(width/2, tiempo, 20, 20);
  } else if (estado == "pantalla1" && estadoID == 1) {
    ellipse(width/2, tiempo, 20, 20);
  } else if (estado == "pantalla2" && estadoID == 2) {
    text("Hola", 50, tiempo);
  }
  println("El estado es: "+estado+" Fotogramas: "+tiempo);
  if (tiempo <= 0) {
    tiempo = height;
    estadoID++;
    if (estadoID > 2) {
      estadoID = 0;
    }
  }
}
