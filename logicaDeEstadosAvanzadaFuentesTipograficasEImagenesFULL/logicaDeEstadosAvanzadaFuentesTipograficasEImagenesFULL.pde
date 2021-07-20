String estado;
PImage fondo0, fondo1, fondo2, fondo3, fondo4;
PImage figura0;
PFont miFuenteDeProcessing;
PFont miFuenteDeInternet;
int estadoID;
int tiempo;
float posY;
float tiempoMapeado;
int velocidad = 0;
boolean modoManual = false;
void setup() {
  size(300, 300);
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, BASELINE);
  surface.setResizable(true);
  miFuenteDeProcessing = loadFont("Stencil-24.vlw");
  miFuenteDeInternet = createFont("MAROLA.TTF", 24);
  fondo0 = loadImage("fondo0.jpg");
  fondo1 = loadImage("fondo1.jpg");
  fondo2 = loadImage("fondo2.jpg");
  fondo3 = loadImage("fondo3.jpg");
  fondo4 = loadImage("fondo4.jpg");
  figura0 = loadImage("figura0.png");
  estado = "setup";
  estadoID = -1;
  tiempo = height;
}
void draw() {

  tiempo-=velocidad; // Tambien puede ser: 'tiempo = tiempo-10; 'tiempo-=10;'
  tiempoMapeado = map(tiempo, height, 0, 0, 255);  
  posY = map(tiempo, height, 0, height, 0);

  if (estadoID == -1) {
    velocidad = 0;
  } else if (estadoID != -1 && !modoManual) {
    velocidad=2;
  } 
  if (estadoID != -1 && modoManual) {
    velocidad=0;
    posY = height/2;
    tiempo = 300;
  }

  background(tiempoMapeado);
  if (estadoID == -1) {
    estado = "setup";
  } else if (estadoID == 0) {
    estado = "pantalla0";
  } else if (estadoID == 1) {
    estado = "pantalla1";
  } else if (estadoID == 2) {
    estado = "pantalla2";
  } else if (estadoID == 3) {
    estado = "pantalla3";
  } else if (estadoID == 4) {
    estado = "pantalla4";
  }
  if (estadoID % 2 == 0) {
    textFont(miFuenteDeInternet, width/20);
  } else {
    textFont(miFuenteDeProcessing, width/20);
  }
  println("El estado es: "+estado+" Fotogramas: "+tiempo);
  if (estado == "setup" && estadoID == -1) {
    text("Setup", width/2, posY/2);
    text("Clic para modo automatico", width/2, posY/4);
    text("Izquierda y Derecha (modo manual)", width/2, posY/1.1);
  }
  if (estado == "pantalla0" && estadoID == 0) {
    image(fondo4, width/2, posY-height, width, height);
    image(fondo0, width/2, posY, width, height);
    image(fondo1, width/2, posY+height, width, height);
    text("Pantalla 0", width/2, posY);
  } else if (estado == "pantalla1" && estadoID == 1) {
    image(fondo0, width/2, posY-height, width, height);
    image(fondo1, width/2, posY, width, height);
    image(fondo2, width/2, posY+height, width, height);
    text("Pantalla 1", width/2, posY);
  } else if (estado == "pantalla2" && estadoID == 2) {
    image(fondo1, width/2, posY-height, width, height);
    image(fondo2, width/2, posY, width, height);
    image(fondo3, width/2, posY+height, width, height);
    text("Pantalla 2", width/2, posY);
  } else if (estado == "pantalla3" && estadoID == 3) {   
    image(fondo2, width/2, posY-height, width, height);
    image(fondo3, width/2, posY, width, height);
    image(fondo4, width/2, posY+height, width, height);    
    text("Pantalla 3", width/2, posY);
  } else if (estado == "pantalla4" && estadoID == 4) {
    image(fondo3, width/2, posY-height, width, height);
    image(fondo4, width/2, posY, width, height);
    image(fondo0, width/2, posY+height, width, height);    
    text("Pantalla 4 Fin", width/2, posY);
  }

  posY = tiempo;
  pushMatrix();
  pushStyle();
  if (mousePressed) {
    translate(mouseX, mouseY);
    rotate(radians(frameCount*10));
    colorMode(HSB);
    tint(tiempo, 255, 255, 255);
    image(figura0, 0, 0);
    tint(random(tiempo), 255, 255, 255);
    image(figura0, random(width), random(height));
  } else {
    colorMode(HSB);
    tint(tiempo, 255, 255, 255);
    image(figura0, mouseX, mouseY);
  }

  popStyle();
  popMatrix();
  if (tiempo <= 0) {
    tiempo = height;
    estadoID++;
    if (estadoID > 4) {
      estadoID = -1;
    }
  }
}
void mouseClicked() {
  modoManual = false;
  if (estadoID==-1) {
    estadoID = 0;
    estado = "pantalla1";
  }
}
void keyPressed() {
  modoManual = true;

  println(keyCode);
  if (estadoID == -1 && keyCode == LEFT) {
    estadoID = -1;
    estado = "setup";
  } else if (estadoID != -1 && keyCode == LEFT) {
    estadoID--;
  } else if (keyCode == RIGHT && estadoID <= 4) {
    estadoID++;
  }
}
