int tamYCant;
int posX;
int posY;
int anchoFiguras;
int altoFiguras;
void setup() {
  size(240, 240);
  textAlign(LEFT, TOP);  
  colorMode(HSB);
  textSize(10);
  noStroke();
  tamYCant = 1;
  surface.setResizable(true);
  println("Grilla dinámica: ");
  println("Presionar las taclas -, + o espacio");
}
void draw() {
  background(255);
  anchoFiguras = round(width/tamYCant);
  altoFiguras = round(height/tamYCant);
  for (int i = 0; i < tamYCant; i++) {
    for (int j = 0; j < tamYCant; j++) {
      posX = round(i*anchoFiguras);
      posY = round(j*altoFiguras);
      if ((i+j) % 2 == 0) {
        fill(255);
      } else if ((i+j) % 2 == 1) {
        fill(0);
      }
       if (i==j) {
        fill(120,200,200);
      }
      if (i+j==tamYCant-1 ) {
        fill(190,240,240);
      }
      if (mouseX > posX 
        && mouseX < posX + anchoFiguras
        && mouseY > posY
        && mouseY < posY + altoFiguras) {
        if (tamYCant != 1) {
          fill(120);
        }
        if (mousePressed) {
          fill(200);
        }
      }

      rect(posX, posY, anchoFiguras, altoFiguras);
      if ((i+j) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      ellipse(i*anchoFiguras, j*altoFiguras, anchoFiguras/20, altoFiguras/20);
      text(i +"/"+ j, i*anchoFiguras, j*altoFiguras);
    }
  }
}
void mouseClicked() {
  surface.setSize(round(width), round(width));
}
void keyPressed() {
  if (key=='+') {
    tamYCant=tamYCant+1;
  } else if (key=='-') {
    tamYCant=tamYCant-1;
  } else if (key==' ') {
    tamYCant=20;
  }
  if (tamYCant < 1) {
    tamYCant = 1;
  } else  if (tamYCant > width) {
    tamYCant = width;
  }
  println("Variable de tamaño y cantidad: ", tamYCant);
}
