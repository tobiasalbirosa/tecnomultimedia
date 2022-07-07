int tam = 40;
void setup() {
  rectMode(CENTER);
  size(400, 400);
}

void draw() {
  background(0);
  rect(width/2, 350, tam, tam);
  rect(mouseX, mouseY, tam, tam);
  calcularDistancias(width/2, 350, mouseX, mouseY);
}
void calcularDistancias (float xPer, float yPer, float xEne, float yEne) {

  if (yEne  > 350 - tam ) {
    pushStyle();


    if (xEne > xPer-tam && xEne < xPer+tam) {
      
      fill(255, 0, 0);

      rect(mouseX, mouseY, tam, tam);
    }

    popStyle();
  }
}
