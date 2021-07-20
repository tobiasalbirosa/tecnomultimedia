String estado;
int tiempo;
void setup() {
  estado = "setup";
  tiempo = height;
  size(200, 200);
}
void draw() {
  background(0);
  tiempo-=10; // Tambien puede ser: 'tiempo = tiempo-10; 'tiempo-=10;'
  if (estado == "setup") {
    rect(mouseX, tiempo, 20, 20);
  }
  println("El estado es: "+estado+" Fotogramas: "+tiempo);
  if (tiempo <= 0) {
    tiempo = height;
  }
}
