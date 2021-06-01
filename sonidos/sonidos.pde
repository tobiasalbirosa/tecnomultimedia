import processing.sound.*;
SoundFile sonido1, sonido2, sonidoDeFondo;
/*
Sonidos tomados de:
 https://freesound.org/
 */
int estado;
boolean tecla;
void setup() {
  size(640, 360);
  background(255);
  sonido1 = new SoundFile(this, "sonido1.wav");
  sonido2 = new SoundFile(this, "sonido2.wav");
  sonidoDeFondo = new SoundFile(this, "sonidoDeFondo.wav");
  estado = 0;
  sonidoDeFondo.loop();
  textAlign(CENTER,BASELINE);
}
void draw() {
  background(0);
  text("Probar con las teclas LEFT y RIGHT",width/2,height/2);
}
void keyPressed() {
  if (keyCode == LEFT) {
    sonido1.stop();
    sonido2.stop();
    sonido1.play();
  }
  if (keyCode == RIGHT) {
    sonido1.stop();
    sonido2.stop();
    sonido2.play();
  }

  tecla = (keyCode == RIGHT) ? true : false;   
  //* >>>>>>>>>> OPERADOR TERNARIO:
  /* ESTO DE ARRIBA ES OPERADOR TERNARIO DE CONDICIONALES 
   
   Si es falsa la condición, podemos reasignarle valores a nuestra variable
   en este caso de tipo 'boolean', llamada tecla:
   
   tecla = (condicion) ? true : false
   
   SERIA LO MISMO DECIR: 
   if(keyCode == RIGHT){
     tecla = false
   }
   else{
     tecla = true;
   }
   */
  // ENTONCES DIBUJAMOS QUE PRESIONAMOS LAS TECLAS:
  if (tecla) {
    rect(width/2, 0, width/2, height);
  } else {
    rect(0, 0, width/2, height);
  }
}
