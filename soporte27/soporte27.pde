
String miTexto = "Mi texto";
PFont miTipografia;
int posY;
int pantalla = 0;
color colorDeFondo = (0);
float mapeado = 255;
/*
AND : && 
 OR : ||
 */
void setup() {
  size(400, 400);
  posY  = height;
  miTipografia = loadFont("Futura-Medium-48.vlw");
  textAlign(CENTER, TOP);
  textFont(miTipografia);
}
void draw() {
  background(colorDeFondo);
  mapeado = map(posY, 400, 0, 0, 255);
  if (posY >= 0 && pantalla < 6) {
    posY--;
  } else {
    posY = height;
  }
  if (posY == 0) {
    pantalla++;
  }
  if (pantalla == 0) {
    colorDeFondo = color(255);
    fill(0, 0, 0, mapeado);
    miTexto = "Pantalla 0";
  }
  if (pantalla == 1) {
    fill(0, 0, 0, mapeado);
    colorDeFondo = color(255, 0, 0);
    miTexto = "Hola mundo!";
  } else if (pantalla == 2) {
    fill(0, 0, 0, mapeado);
    colorDeFondo = color(0, 255, 0);
    miTexto = "Pantalla 2";
  } else if (pantalla == 3 || pantalla == 4) {
    fill(0, 0, 0, mapeado);
    colorDeFondo = color(255);
    miTexto = "Esta es la pantalla \n 3 o 4 \n Gracias";
  } else if (pantalla == 5) {
    fill(255, mapeado);
    colorDeFondo = color(0);
    miTexto = "Fin.";
  }
  text(miTexto, width/2, posY);
  println("PosY: ", posY);
  println("Pantalla: ", pantalla);
}
