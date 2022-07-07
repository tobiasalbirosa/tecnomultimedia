float x, y;
int longitud;
float angulo;
float tam;
float xPer, yPer, vel;
boolean asciende, desciende, izquierda, derecha;
void setup() {
  size(200, 200);
  xPer= width/4; 
  yPer= height/4;
  vel = 0.1;
}

void draw() {

  background(80);
  tam = width/4;
  // translate(width/2, height/2);
  calculo();
  // println(keyCode);
}

void calculo() {
  //->Obtención de X e Y en coordenadas polares:
  //1 - Se toma el coseno de X y el seno de Y
  //2 - Se multiplica por la longitud deseada
  //-> ANGULO DE MI VECTOR DE A,B a C,D:
  // Necesitamos que vaya de 0 a 360 para pasarlo a radians
  angulo = int(map(xPer, 0, width, 0, 360));
  //-> LONGITUD DE VECTOR DE A,B a C,D
  //Medirá la distancia entre el 0,0 y el x,y
  longitud = int(yPer);

  x = cos(radians(angulo)) * longitud;
  y = sin(radians(angulo)) * longitud;
  caminar();
  dibujo();
}
void mouseMoved() {
  vel = map(mouseX, 0, width, 0, 1);
}
void dibujo() {

  line(0, 0, x, y);
  circle(x, y, tam);
}

void keyPressed() {
  if (key == 'W' || key == 'w') {
    asciende = true;
  }
  if (key == 'S'  || key == 's') {

    desciende = true;
  }
  if (key == 'A' || key == 'a') {
    izquierda = true;
  }
  if (key == 'D' || key == 'd') {
    derecha = true;
  }
}
void keyReleased() {
  if (key == 'W' || key == 'w') {
    asciende = false;
  }
  if (key == 'S'  || key == 's') {

    desciende = false;
  }
  if (key == 'A' || key == 'a') {
    izquierda = false;
  }
  if (key == 'D' || key == 'd') {
    derecha = false;
  }
}
void caminar() {

  if (asciende == true) {
    yPer -=1 * vel;

    if (izquierda == true) {
      xPer -=1 * vel;
    }
    if (derecha == true) {
      xPer +=1 * vel;
    }
  }
  if (desciende == true) {
    yPer +=1 * vel;
    if (izquierda == true) {
      xPer +=1 * vel;
    }
    if (derecha == true) {
      xPer -= 1 * vel;
    }
  }
}
