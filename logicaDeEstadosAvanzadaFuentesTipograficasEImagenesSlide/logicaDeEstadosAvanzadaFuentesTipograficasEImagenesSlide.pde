String estado;
PImage fondo0, fondo1, fondo2, fondo3, fondo4;
PImage figura0;
PFont miFuenteDeProcessing;
PFont miFuenteDeInternet;
int estadoID;
int tiempo;
float posY;
float tiempoMapeado;
void setup() {
  size(200, 200);
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
  estadoID = 0;
  tiempo = height;
}
void draw() {
  tiempo-=2; // Tambien puede ser: 'tiempo = tiempo-10; 'tiempo-=10;'
  tiempoMapeado = map(tiempo, height, 0, 0, 255);  
  posY = map(tiempo, height, 0, height, 0);
  background(tiempoMapeado);
  if (estadoID == 0) {
    estado = "setup";
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
    textFont(miFuenteDeProcessing, width/10);
  } else {
    textFont(miFuenteDeInternet, width/10);
  }
  println("El estado es: "+estado+" Fotogramas: "+tiempo);
  if (estado == "setup" && estadoID == 0) {
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
    text("Pantalla 2", width/2, posY);
  } else if (estado == "pantalla4" && estadoID == 4) {
    image(fondo3, width/2, posY-height, width, height);
    image(fondo4, width/2, posY, width, height);
    image(fondo0, width/2, posY+height, width, height);    
    text("Pantalla 3", width/2, posY);
  }

  posY = tiempo;
  pushStyle();
  colorMode(HSB);
  tint(tiempo, 255, 255, 255);
  image(figura0, mouseX, mouseY);
  popStyle();
  if (tiempo <= 0) {
    tiempo = height;
    estadoID++;
    if (estadoID > 4) {
      estadoID = 0;
    }
  }
}
