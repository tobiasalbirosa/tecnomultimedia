float valorDelMap;
float valorDelMapNuevo;
int limiteDelMap;
void setup() {
  size(480, 560);
  limiteDelMap = height;
}
void draw() {
  background(0);
  fill(valorDelMap);
  rect(mouseX, height/2, 20, 20);
  text("Valor real: "+mouseX, mouseX, height/2);

  valorDelMap = map(mouseX, 0, width, 0, limiteDelMap);
  circle(width/2, valorDelMap, 20);
  
  text("Valor mapeado: "+valorDelMap, width/3, valorDelMap+50);
  fill(valorDelMap);
  

  valorDelMapNuevo = map(valorDelMap,0, limiteDelMap,0,255);
 
  fill(valorDelMapNuevo,0,0,valorDelMapNuevo);
  circle(0,0,150);
  
  fill(0,0,valorDelMapNuevo,valorDelMapNuevo);
  circle(width/PI,height/PI,150);
  
  fill(0,valorDelMapNuevo,0,valorDelMapNuevo);
  circle(width/PI*2,height/PI*2,150);
  
  fill(valorDelMapNuevo,0,valorDelMap,valorDelMapNuevo);
  circle(width,height,150);
  
}
