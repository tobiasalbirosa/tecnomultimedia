int contador;
void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  contador++;
  if (contador >= width) {
    contador = 0;
  }
 rect(0, 20, contador, 20);
}
