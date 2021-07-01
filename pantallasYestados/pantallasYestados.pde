
String miTexto = "Mi texto";

PFont miTipografia, miTipografia2;

int posY;
int pantalla = 0;
color colorDeFondo;
float mapeado = 255;
void setup() {
  size(400, 400);
  posY  = height;

  miTipografia = loadFont("Monospaced-48.vlw");

  miTipografia2 = createFont("Roboto-Black", 48);

  textAlign(CENTER, TOP);
}
void draw() { 
  background(colorDeFondo);
  mapeado = map(posY, height, 0, 0, 255);
    if (pantalla % 2 == 0) {
    textFont(miTipografia2);
  } else {
    textFont(miTipografia);
  }

  if (posY <= 0) {
    pantalla++;
    posY = height;
  }

  if (posY >= 0 && pantalla < 6) {
    posY-=2;
  } else {
    posY = height;
  }

  if (pantalla == 0) {
    colorDeFondo = color(255);
    fill(0, 0, 0, mapeado);
    miTexto = "Pantalla 0";
  }
  if (pantalla == 1) {
    colorDeFondo = color(255, 0, 0);
    fill(0, 0, 0, mapeado);
    miTexto = "Hola mundo!";
  } else if (pantalla == 2) {
    colorDeFondo = color(0, 255, 0);
    fill(0, 0, 0, mapeado);
    miTexto = "Pantalla 2";
  } else if (pantalla == 3 || pantalla == 4) {
    fill(0, 0, 0, mapeado);
    colorDeFondo = color(255);
    miTexto = "Esta es la pantalla \n 3 o 4 \n Gracias";
  } else if (pantalla == 5) {
    colorDeFondo = color(0);
    fill(255, mapeado);
    miTexto = "Fin.";
  }
  if (pantalla == 6) {
    pantalla = 0;
  }
  text(miTexto, width/2, posY);
  println("PosY: ", posY);
  println("mapeado: ", mapeado);
  println("Pantalla: ", pantalla);
}
void mouseClicked() {
}
