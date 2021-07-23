float tamX, tamY, posX, posY;
color colorRectangulo, colorCirculo;
String textoRectangulo, textoCirculo;
boolean rectanguloClickeado, circuloClickeado;
void setup() {
  size(240, 240);
  surface.setResizable(true);
  textAlign(CENTER);
  rectMode(CENTER);
  ellipseMode(CENTER);
  textoRectangulo = "";
  textoCirculo = "";
  rectanguloClickeado = false;
  circuloClickeado = false;
}
void draw() {
  
  background(255);
  textSize(int(width/25));
  
  tamX = width/4;
  tamY = width/4;
  posX = width/3;
  posY = height/3;
  
///////////////////    RECTANGULO:    /////////////////////// 
  fill(colorRectangulo);
  rect(posX, posY, tamX, tamY);
  fill(0);
  text(textoRectangulo, posX, posY);
  
  
///////////////////    CIRCULO:    /////////////////////// 
  fill(colorCirculo);
  circle(posX*2, posY, tamX);
  fill(0);
  text(textoCirculo, posX*2, posY); // SOLO VARIAMOS LA POSX en *2 PARA DIBUJARLO SEPARADO
}

void mouseMoved () {
///////////////////    RECTANGULO:    /////////////////////// 
  if (mouseX > posX - tamX/2 && mouseX < posX + tamX/2 
    &&  mouseY > posY - tamY/2 && mouseY < posY + tamY/2
    && !rectanguloClickeado) 
  {
    colorRectangulo = color(255);
    textoRectangulo = "Click:"+ rectanguloClickeado;
  } else if (!rectanguloClickeado) {
    colorRectangulo = color(0);
    textoRectangulo = "";
  }
///////////////////    CIRCULO:    /////////////////////// 
  if (dist(mouseX, mouseY, posX*2, posY) < tamY/2
    && !circuloClickeado) {
    colorCirculo = color(255);
    textoCirculo = "Click:"+ circuloClickeado;
  } else if (!circuloClickeado) {
    colorCirculo = color(0);
    textoCirculo = "";
  }
}

void mousePressed () {
///////////////////    RECTANGULO:    /////////////////////// 
  if (mouseX > posX - tamX/2 && mouseX < posX + tamX/2 
    &&  mouseY > posY - tamY/2 && mouseY < posY + tamY/2
    && !rectanguloClickeado) 
  {
    colorRectangulo = color(120);
  } else if (!rectanguloClickeado) {
    colorRectangulo = color(0);
  }
///////////////////    CIRCULO:    /////////////////////// 
  if (dist(mouseX, mouseY, posX*2, posY) < tamY/2
    && !circuloClickeado) {
    colorCirculo = color(120);
  } else if (!circuloClickeado) {
    colorCirculo = color(0);
  }
}

void mouseClicked () {
  ///////////////////    RECTANGULO:    /////////////////////// 
  if (mouseX > posX - tamX/2 && mouseX < posX + tamX/2 
    &&  mouseY > posY - tamY/2 && mouseY < posY + tamY/2) 
  {
    rectanguloClickeado = !rectanguloClickeado;
    textoRectangulo = "Click:"+ rectanguloClickeado;
    colorRectangulo = color(120, 120, 200);
  }
  ///////////////////    CIRCULO:    /////////////////////// 
  if (dist(mouseX, mouseY, posX*2, posY) < tamY/2) {
    circuloClickeado = !circuloClickeado;
    textoCirculo = "Click:"+ circuloClickeado;
    colorCirculo = color(120, 120, 200);
  }
}
