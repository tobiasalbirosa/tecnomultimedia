// DECLRACION parteA:
float [][][] arregloFloatntes;
//!! IMPORTANTE
// VARIABLE CANTIDAD DE ESPACIOS DEL ARREGLO
int cantidadDeEspacios;
void setup () {
  size(400, 400);
  cantidadDeEspacios = 3;
  // DECLRACION parteB:
  arregloFloatntes = new float[cantidadDeEspacios][cantidadDeEspacios][cantidadDeEspacios];  
  // ASIGNACION:
  for (int i = 0; i < cantidadDeEspacios; i++) {
    for (int j = 0; j < cantidadDeEspacios; j++) {
      for (int k = 0; k < cantidadDeEspacios; k++) {
        arregloFloatntes[i][j][k] = random(255);
      }
    }
  }
  textAlign(LEFT,CENTER);
}
void draw () {
  background(0);  
  //* Dato importante: Propiedad .lenght
  // USO Y ACTUALIZACION:
  for (int i = 0; i < cantidadDeEspacios; i++) {
    for (int j = 0; j < cantidadDeEspacios; j++) {
      for (int k = 0; k < cantidadDeEspacios; k++) {
        float posZ = map(k, 0, cantidadDeEspacios, 150, 50);
        textSize(posZ/10);
        text("3D : "+i+"/"+j+"/"+k+"", mouseX+(i*150-posZ), mouseY+(j*100-posZ));
      }
    }
  }
}
