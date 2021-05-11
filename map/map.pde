/*
 El efecto de la función map consiste en 
 devolver una variable de tipo flotante,
 esta variable es el resultado de 
 una variable pirnicpal (llamaremos v1)
 que varía entre rangos:
 
  Un mínimo (llamaremos x1) y un máximo (llamaremos y1)
  de la variable principal
  y otros valores en el mínimo (x2) y en el máximo (y2) 
  de la variable que retorna

 La función map(v1,x1,y1,x2,y2) espera 5 parámetros:
 
 v1 - La variable principal que usará map
 x1 - El mínimo de la variable principal
 y1 - El máximo de la variable principal
 x2 - El mínimo del nuevo valor mínimo
 y2 - El máximo del nuevo valor máximo
 
 + En este sketch usaremos la variable de tipo floatante
   'miVariable' la cual usaremos como variable resultante 
   de la función map() de Processing
   
   Referencia:
   https://processing.org/reference/map_.html
   
*/
float miVariable = 0;
void setup(){
  size(250,500);
}  
void draw(){
  miVariable = map(mouseX, 0 , width, 0, height);
  background(0);
  fill(255);
  text("Width: " + width, width/2, 0+height/12);
  text("Height: " + height, width/2, 0+height/12*2);
  text("Mi mouseX: "+ mouseX, width/2, 0+height/12*3);
  text("Mi resultado: " + miVariable, width/2, 0+height/12*4);
  ellipse(50,miVariable,100,100);
  fill(0);
  text(miVariable,20,miVariable);
}
