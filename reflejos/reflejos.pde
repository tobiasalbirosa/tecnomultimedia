float tam;
float tamB;
float posX;
float posY;
color colorVariable;
int framesPorSegundo;
int dificultad;
int cantidadDeCuadrantes;
int estado;
String porJugar = "Prueba tus reflejos y sube de nivel";
int nivel;
int maxNivel;
void setup() {
  size(480, 480);
  cantidadDeCuadrantes = 2;
  dificultad = 60;
  estado = 0;
  nivel = 0;
  framesPorSegundo = 60;
  background(0);
  textAlign(CENTER, BASELINE);
  background(255);
  frameRate(framesPorSegundo);
  tam = width/cantidadDeCuadrantes;
  tamB = width/4;
  colorVariable = color(255);
}
void draw() {
  if (estado == 0) {
    textSize(12);
    background(0, 0, 32);
    fill(colorVariable);
    text(porJugar, width/2, height/6);
    noFill();
    stroke(colorVariable);
    rect(width/2-tamB/2, height/2-tamB/2, tamB, tamB);
    fill(colorVariable);
    text("Empezar", width/2, height/2);
    textSize(10);
    text("Nivel máximo alcanzado: "+maxNivel, width/1.5, height/10);
  } else if (estado == 1) {
    textSize(12);
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
      posX = tam*round((random(0, cantidadDeCuadrantes-1)));
      posY = tam*round((random(0, cantidadDeCuadrantes-1)));
    }
    rect(posX, posY, tam, tam);
  } else if (estado == 2) {
    background(255);
    text("Pasaste al nivel:"+nivel, width/2, height/5);
    text("La dificultad aumenta...", width/2, height/4);
    if (nivel > 80) {
      text("Dificultad inhumana", width/2, height/3.5);
    }
    noFill();
    stroke(colorVariable);
    rect(width/2-tamB/2, height/2-tamB/2, tamB, tamB);
    fill(colorVariable);
    text("Seguir", width/2, height/2);
    noStroke();
  } else if (estado == 3) {
    background(255);
    text("¡Completaste una decena de niveles!", width/2, height/4);
    noFill();
    stroke(colorVariable);
    rect(width/2-tamB/2, height/2-tamB/2, tamB, tamB);
    fill(colorVariable);
    text("Inicio", width/2, height/2);
    noStroke();
  }
}
void mouseMoved() {
  colorVariable = color(200);
  if (mouseX > posX 
    && mouseX < posX + tam 
    && mouseY > posY 
    && mouseY < posY + tam 
    && estado == 1) 
  {
    colorVariable = color(255);
  }
  if (mouseX > width/2-tamB/2 
    && mouseX < width/2-tamB/2 + tamB 
    && mouseY > height/2-tamB/2 
    && mouseY < height/2-tam/2 + tamB 
    && estado == 0) 
  {
    colorVariable = color(255);
  }
  if (mouseX > width/2-tamB/2 
    && mouseX < width/2-tamB/2 + tamB 
    && mouseY > height/2-tamB/2 
    && mouseY < height/2-tamB/2 + tamB 
    && estado == 2 
    || estado == 3) 
  {
    colorVariable = color(0);
    noStroke();
  }
  if (mouseX > width/2-tamB/2   
    && mouseX < width/2-tamB/2 + tamB 
    && mouseY > height/2-tamB/2 
    && mouseY < height/2-tamB/2 + tamB 
    && estado == 3) 
  {
    colorVariable = color(0);
    noStroke();
  }
}
void mouseClicked() {
  println("# de estado cuando hago click: #", estado);
  colorVariable = color(200);
  if (
    mouseX > width/2-tamB/2
    && mouseX < width/2-tamB/2 + tamB 
    && mouseY > height/2-tamB/2 
    && mouseY < height/2-tamB/2 + tamB
    && estado == 0) {
    estado = 1;
  }
  if (mouseX > width/2-tamB/2 
    && mouseX < width/2-tamB/2 + tamB 
    && mouseY > height/2-tamB/2 
    && mouseY < height/2-tamB/2 + tamB 
    && estado == 2) {
    estado = 1;
  }
  if (mouseX > width/2-tamB/2 
    && mouseX < width/2-tamB/2 + tamB 
    && mouseY > height/2-tamB/2
    && mouseY < height/2-tamB/2 + tamB 
    && estado == 3) {
    println("HEY");
    estado = 1;
  }
}
void mousePressed() {
  if (mouseX > posX 
    && mouseX < posX + tam 
    && mouseY > posY 
    && mouseY < posY + tam 
    && estado == 1) 
  {
    posX = tam*round((random(0, cantidadDeCuadrantes-1)));
    posY = tam*round((random(0, cantidadDeCuadrantes-1)));
    nivel++;
    if (nivel > maxNivel) {
      maxNivel = nivel;
    }
    println("Dificultad (menos es más): ", dificultad);
    if (dificultad >= 12) 
    {
      dificultad = dificultad - 6;
    }
    estado = 2;
  }
  if (nivel % 10 == 0 
    && nivel != 0
    && dificultad == 6) 
  {
    estado = 3;
    dificultad = 60;
    cantidadDeCuadrantes++;
    tam = width/cantidadDeCuadrantes;
  }
  if (nivel >= 90) 
  {
    estado = 0;
    dificultad = 60;
    nivel = 0;
    cantidadDeCuadrantes = 2;
  }
}
void keyPressed() {
  if (key == BACKSPACE) 
  {
    estado = 0;
    dificultad = 60;
    nivel = 0;
    cantidadDeCuadrantes = 2;
  }
}
