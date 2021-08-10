// DECLRACION parteA
float [][] arregloFloatntes;
//!! IMPORTANTE
// VARIABLE CANTIDAD DE ESPACIOS
int cantidadDeEspacios;
void setup () {
  size(400, 400);
  cantidadDeEspacios = 5;
  // DECLRACION parteB
  arregloFloatntes = new float[cantidadDeEspacios][cantidadDeEspacios];  
  // ASIGNACION
  for (int i = 0; i < cantidadDeEspacios; i++) {
    for (int j = 0; j < cantidadDeEspacios; j++) {
      arregloFloatntes[i][j] = random(255);
    }
  }
  textSize(12);
}
void draw () {
  background(0);  
  //* Dato importante: Propiedad .lenght
  for (int i = 0; i < cantidadDeEspacios; i++) {
    for (int j = 0; j < cantidadDeEspacios; j++) {
      text("Valor ["+i+"]["+j+"]: "+arregloFloatntes[i][j], mouseX+(i*200), mouseY+(j*20));
    }
  }
}
