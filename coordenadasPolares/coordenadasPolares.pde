//PRACTICA DE COORDENDAS POLARES
// CON MOUSEX REGULAMOS LA ROTAICION
// CON MOUSEY REGULAMOS LA LONGITUD
float x, y;
int longitud;
float angulo;
float tam;
boolean centrar;
void setup() {
  size(200, 200);
  surface.setResizable(true);
  rectMode(CENTER);
}
void draw() {
  background(80);

  tam = width/4;
  if (centrar) {
    translate(width/2, height/2);
  }

  //-> ANGULO DE MI VECTOR DE A,B a C,D:
  // Necesitamos que vaya de 0 a 360 para pasarlo a radians
  angulo = int(map(mouseX, 0, width, 0, 360));

  //-> LONGITUD DE VECTOR DE A,B a C,D
  //Medirá la distancia entre el 0,0 y el x,y
  longitud = int(mouseY);

  //->Obtención de X e Y en coordenadas polares:
  //1 - Se toma el coseno de X, el coseno deY
  //2 - Se multiplica por la longitud deseada
  x = cos(radians(angulo)) * longitud;
  y = sin(radians(angulo)) * longitud;

  line(0, 0, x, y);
  text("Longitud: "+longitud + "px", x/2, y/2);
  pushMatrix();
  
  translate(x,y);
  rotate(radians(angulo));
  
  rect(0, 0, tam, tam);
  popMatrix();
  text("Angulo: º"+angulo, x, y);
}
void mouseClicked() {
  centrar =! centrar;
}
