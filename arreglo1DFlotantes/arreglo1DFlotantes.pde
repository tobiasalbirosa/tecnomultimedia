// DECLRACION parteA
float [] arregloFloatntes;
//!! IMPORTANTE
// VARIABLE CANTIDAD DE ESPACIOS DEL ARREGLO
int cantidadDeEspacios;
void setup () {
  size(400, 400);
  cantidadDeEspacios = 15;
  // DECLRACION parteB
  arregloFloatntes = new float[cantidadDeEspacios];  
  // ASIGNACION
  for (int i = 0; i < cantidadDeEspacios; i++) {
    arregloFloatntes[i] = random(255);
  }
  textSize(12);
}
void draw () {
  background(0);  
  //* Dato importante: Propiedad .lenght
  // USO Y ACTUALIZACION
  for (int i = 0; i < arregloFloatntes.length; i++) {
    text("Valor del casillero flotante ["+i+"]: "+arregloFloatntes[i], mouseX, mouseY+(i*20));
  }
}
