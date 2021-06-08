float tam;
float posX;
float posY;
color colorVariable = color(255);
color color1 = color(255, 0, 0);
int framesPorSegundo = 60;
int dificultad = 60;
int cantidadDeCuadrantes = 4;
int estado = 0;
String porJugar = "Prueba tus reflejos y sube de nivel";
int nivel = 0;
void setup() {
  size(320, 320);
  frameRate(framesPorSegundo);
  background(0);
  textAlign(CENTER, BASELINE);
  background(255);
  tam = width/cantidadDeCuadrantes;
}
void draw() {
  if (estado == 0) {
    background(0, 0, 32);
    fill(colorVariable);
    text(porJugar, width/2, height/6);
    noFill();
    stroke(colorVariable);
    rect(width/2-tam/2, height/2-tam/2, tam, tam);
    fill(colorVariable);
    text("Empezar", width/2, height/2);
  } else if (estado == 1) {
    text("Estás en el nivel:"+nivel, width/2, height/5);
    textSize(10);
    text("Backspace para salir", width/5, height/10);
    textSize(12);
    fill(0, 0, 32, 127);
    noStroke();
    rect(0, 0, width, height);
    fill(colorVariable);
    stroke(colorVariable);
    if (posY > height || posX > width || frameCount % dificultad == 0) {
      posX = tam*round((random(0, cantidadDeCuadrantes)));
      posY = tam*round((random(0, cantidadDeCuadrantes)));
    }
    rect(posX, posY, tam, tam);
  } else if (estado == 2) {
    background(255);
    text("Pasaste al nivel:"+nivel, width/2, height/5);
    text("La dificultad aumenta...", width/2, height/4);
    if(nivel > 6){
      text("Dificultad inhumana (para mí)", width/2, height/3.5);
    }
    noFill();
    stroke(colorVariable);
    rect(width/2-tam/2, height/2-tam/2, tam, tam);
    fill(colorVariable);
    text("Seguir", width/2, height/2);
    noStroke();
  } else if (estado == 3) {
    background(255);
    text("¡Completaste todos los niveles!", width/2, height/4);
    noFill();
    stroke(colorVariable);
    rect(width/2-tam/2, height/2-tam/2, tam, tam);
    fill(colorVariable);
    text("Inicio", width/2, height/2);
    noStroke();
  }
}
void mouseMoved() {
  colorVariable = color(200);
  if (mouseX > width/2-tam/2 && mouseX < width/2-tam/2 + tam 
    && mouseY > height/2-tam/2 && mouseY < height/2-tam/2 + tam && estado == 0) {
    colorVariable = color(255);
  }
  if (mouseX > posX && mouseX < posX + tam && mouseY > posY && mouseY < posY + tam && estado == 1) {
    colorVariable = color(255);
  }
  if (mouseX > width/2-tam/2 && mouseX < width/2-tam/2 + tam 
    && mouseY > height/2-tam/2 && mouseY < height/2-tam/2 + tam && estado == 2 
    || estado == 3) {
    colorVariable = color(0);
    noStroke();
  }
  if (mouseX > width/2-tam/2 && mouseX < width/2-tam/2 + tam 
    && mouseY > height/2-tam/2 && mouseY < height/2-tam/2 + tam && estado == 3) {
    colorVariable = color(0);
    noStroke();
  }
}
void mouseClicked() {
  println("click:", estado);
  colorVariable = color(200);
  if (
    mouseX > width/2-tam/2 
    && mouseX < width/2-tam/2 + tam 
    && mouseY > height/2-tam/2 
    && mouseY < height/2-tam/2 + tam
    && estado == 0) {
    estado = 1;
  }
  if (mouseX > width/2-tam/2 && mouseX < width/2-tam/2 + tam 
    && mouseY > height/2-tam/2 && mouseY < height/2-tam/2 + tam 
    && estado == 2) {
    estado = 1;
  }
  if (mouseX > width/2-tam/2 && mouseX < width/2-tam/2 + tam 
    && mouseY > height/2-tam/2 && mouseY < height/2-tam/2 + tam 
    && estado == 3) {
    estado = 0;
  }
}
void mousePressed() {
  if (mouseX > posX && mouseX < posX + tam && mouseY > posY && mouseY < posY + tam && estado == 1) {
    nivel++;
    println(dificultad);
    if (nivel < 5) {
      dificultad = dificultad - 8;
      estado = 2;
    } else if (nivel > 5 && nivel <= 10) {
      dificultad = dificultad - 5;
      estado = 2;
    } else if (nivel > 10) {
      estado = 3;
      nivel = 1;
      dificultad = 60;
    }
  }
}
