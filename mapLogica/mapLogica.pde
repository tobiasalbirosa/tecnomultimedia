float valorDelMap;
int limiteDelMap;
void setup() {
  size(240, 380);
  limiteDelMap = height;
}
void draw() {
  background(0);
  rect(mouseX, height/2, 20, 20);
  text("Valor real: "+mouseX, mouseX, height/2);
  
  //- Asignamos a valorDelMap, el valor del map de mouseX:
  valorDelMap = map(mouseX, 0, width, 0, limiteDelMap);

 //- Usamos la variable valorDelMap 
  fill(valorDelMap);
  circle(width/2, valorDelMap, 20);
  text("Valor mapeado: "+valorDelMap, width/3, valorDelMap+50);
}
