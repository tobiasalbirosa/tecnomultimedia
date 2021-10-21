class Celda {
  PImage celda;
  float x, y, tam;
  Celda(PImage celda, float x, float y, float tam) {
    this.celda = celda;
    this.x = x; 
    this.y = y;
    this.tam = tam;
  }
  void dibujarCelda() {
    image(this.celda, this.x, this.y, this.tam, this.tam);
  }
}
