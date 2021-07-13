float angulo = 0;
int escala;
float centroX, centroY;
float x, y;
float tam;
color colorDeRelleno;
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
       angulo = i;
      if (j % 20 == 0) {
        colorDeRelleno = 0;
        angulo = angulo + radians(180);
      } else {
        colorDeRelleno = 255;
      }
      y = centroY + cos(angulo) * escala; 
      x = centroX + sin(angulo) * escala;
      fill(colorDeRelleno);
      ellipse(x, y, tam, tam);
    }
    tam = tam * 5;
    tam = map(tam, 0, width/10  * 5 * 10, 5, width);
    escala =  height/5 + int(j*5);
    escala = int(map(escala, 0, height/5  + 500, 0, width/2));
  }

}
