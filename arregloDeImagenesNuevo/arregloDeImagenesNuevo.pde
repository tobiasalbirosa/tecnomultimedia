PImage [] fondos;
String [] textosDeInicio;
String [] textos;

int estado;
void setup() {
  fondos = new PImage[4];
  estado = 0;
  size(400, 400);
  textosDeInicio = loadStrings("textosDeInicio.txt");
  textos = loadStrings("textos.txt");

  for (int i = 0; i < 4; i++) {
    println(i+".jpg");
    fondos[i] = loadImage("fondos/"+i+".jpg");
  }
}
void draw() {
  dibujarPantallas();
}
void keyPressed() {
  estado+=1;
  if (estado > 3) {
    estado = 0;
  }
}
void dibujarPantallas() {
  if ( estado == 0) {
    //PANTALLA DE INCIO
    image(fondos[0], 0, 0, width, height);
    text(textosDeInicio[0], width/2, height/2);
    text(textosDeInicio[1], width/2, height/2 + 18);
  }
  if ( estado == 1) {
    //JUGANDO

    image(fondos[1], 0, 0, width, height);
    text(textos[0], width/2, height/2);
  }
  if ( estado == 2) {
    //GANASTE

    image(fondos[2], 0, 0, width, height);
    text(textos[1], width/2, height/2);
  }
  if ( estado == 3) {
    //PERDISTE

    image(fondos[3], 0, 0, width, height);
    text(textos[2], width/2, height/2);
  }
}
