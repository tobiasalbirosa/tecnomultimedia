int segundos = 0;
int minutos = 0;
int horas = 0;
void setup() {
  size(240, 240);
  frameRate(600);
}
void draw() {
  background(0);
  println(frameCount);
  if (frameCount % 60 == 0) { // <- UN SEGUNDO
    segundos++;
    if (segundos >= 60) {  // <- UN MINUTO
      segundos = 0;
      minutos++;
      if (minutos >= 60) { // <- UNA HORA
        minutos = 0;
        horas++;     
        if (horas >= 24) { // <- UN DÍA
          horas = 0;
        }
      }
    }
  }
  text(horas + ":" + minutos +":" + segundos, width/2, height/2);
}
