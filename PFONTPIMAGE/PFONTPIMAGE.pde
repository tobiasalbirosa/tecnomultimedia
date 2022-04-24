//VARIABLES
int miVariable;
float miRect;
char caracter;
String texto;
boolean verdaderoOFalso;
PImage arbol;

PFont fuenteNueva;

PFont fuenteNuevaImportada;

void setup() {

  size(400, 400);
  textSize(32);
  background(0);
  println(verdaderoOFalso);
  
  miVariable = 1000;
  miRect = random(10, 180);
  caracter = '0';
  texto = "Hola,\nestoy en processing,\nsoy una variable de tipo texto.";
  verdaderoOFalso = true;
  
  arbol = loadImage("arbol.jpg");
  
  fuenteNueva = loadFont("bodoni.vlw");
  
  fuenteNuevaImportada = createFont("Florilane Cardillac.ttf", 32);
  
  textFont(fuenteNueva);
  

}

void draw() {

  miVariable = frameCount / 2;
  miRect = random(10, 180);

  background(0, miVariable, 200);

  image(arbol, 120, 400- (miVariable/2), 70, 70);

  fill(200, 0, miVariable, 200);

  text(texto, miVariable, 200);

  circle( 0, miVariable, 80); 

  ellipse(0, 400-miVariable, 80, 120); 

  rect(350, 350, miRect, miRect);

  triangle(100, 100, 150, 110, 125, 50);

  triangle(110, 110, 160, 120, 135, 60);


  stroke(0, 255, 0);

  line(0, 400, 400, 0);
}
