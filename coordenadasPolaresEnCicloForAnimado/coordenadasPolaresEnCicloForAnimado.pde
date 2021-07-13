float angulo = 0;
int escala;
float centroX, centroY;
float x, y;
float tam;
color colorDeRelleno;
float velocidad;
void setup() {
  size(500, 500);
  smooth();
  centroX = width/2;
  centroY = width/2;
  tam = width/200;
  surface.setResizable(true);
  colorMode(HSB);
}
void draw() {
  background(80);
  escala = 0;
  tam = width/10;
  centroX = width/2;
  centroY = width/2;
  for (int j = 0; j < 100; j+=10) {
    for (int i = 0; i <= 360; i+= 36) {
      pushMatrix();
      noStroke();
      if (mousePressed) {
        stroke(i);
        line(mouseX, mouseY, x, y);
        translate(mouseX-width/2, mouseY-height/2);
      }
      if (j % 20 == 0) {
        colorDeRelleno = 0;
        angulo = angulo + i + radians(180);
        angulo =  i + velocidad;
      } else {
        colorDeRelleno = 255;
        angulo =  i - velocidad;
      }
      y = centroY + cos(angulo) * escala; 
      x = centroX + sin(angulo) * escala;
      fill(colorDeRelleno);
      ellipse(x, y, tam, tam);

      popMatrix();
    }
    tam = tam * 5;
    tam = map(tam, 0, width/10  * 5 * 10, 5, width);
    escala =  height/5 + int(j*5);
    escala = int(map(escala, 0, height/5  + 500, 0, width/2));
  }
  velocidad +=.003;
}
