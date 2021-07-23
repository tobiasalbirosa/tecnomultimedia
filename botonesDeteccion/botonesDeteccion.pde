float tamX, tamY, posX, posY;
color colorRectangulo, colorCirculo;
void setup() {
  surface.setResizable(true);
  rectMode(CENTER);
  ellipseMode(CENTER);
}
void draw() {
  tamX = width/4;
  tamY = width/4;
  posX = width/3;
  posY = height/3;
  fill(colorRectangulo);
  rect(posX, posY, tamX, tamY);
  fill(colorCirculo);
  circle(posX*2, posY, tamX);
}

void mouseMoved () {
  // ESTRUCTURA IF PARA DETECTAR RECTANGULO
  if (mouseX > posX - tamX/2 && mouseX < posX + tamX/2 
    &&  mouseY > posY - tamY/2 && mouseY < posY + tamY/2) 
  {
    colorRectangulo = color(255);
  } else {
    colorRectangulo = color(0);
  }
  // ESTRUCTURA IF PARA DETECTAR CIRCULO
  if (dist(mouseX, mouseY, posX*2, posY) < tamY/2) {
    colorCirculo = color(255);
  } else {
    colorCirculo = color(0);
  }
}

void mouseClicked () {
  if (mouseX > posX - tamX/2 && mouseX < posX + tamX/2 
    &&  mouseY > posY - tamY/2 && mouseY < posY + tamY/2) 
  {
    colorRectangulo = color(120, 120, 200);
  } else {
    colorRectangulo = color(0);
  }
  if (dist(mouseX, mouseY, posX*2, posY) < tamY/2) {
    colorCirculo = color(120, 120, 200);
  } else {
    colorCirculo = color(0);
  }
}
