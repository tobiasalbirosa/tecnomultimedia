int cantidadDeParticulas = 10;
int maximoDeParticulas = 100;
int particulasActivas = 0;
float [][] initX = new float [maximoDeParticulas][cantidadDeParticulas]; 
float [][] initY = new float [maximoDeParticulas][cantidadDeParticulas]; 
float [][] partX = new float [maximoDeParticulas][cantidadDeParticulas]; 
float [][] partY = new float [maximoDeParticulas][cantidadDeParticulas]; 
float [][] vel_X = new float [maximoDeParticulas][cantidadDeParticulas];
float [][] vel_Y = new float [maximoDeParticulas][cantidadDeParticulas];
boolean [][] particulasVivas = new boolean[maximoDeParticulas][cantidadDeParticulas];
int tiempoDeVida [][] = new int[maximoDeParticulas][cantidadDeParticulas];
float miraAngulo [][] = new float[maximoDeParticulas][cantidadDeParticulas];

void nacer() {

  pushStyle();
  if (particulasActivas < maximoDeParticulas) {
    particulasActivas++;
  }

  println("nacer");
  println(angulo + "°", longitud + "px");
  for (int j = 0; j < particulasActivas; j++) {
    for (int i = 0; i < cantidadDeParticulas; i++) {

      if (particulasVivas[j][i] == false) {

        tiempoDeVida[j][i] = 0;
        initX[j][i] = x;
        initY[j][i] = y;

        partX[j][i] = initX[j][i];
        partY[j][i] = initY[j][i];
        miraAngulo[j][i] = angulo + random(-PI*PI, PI*PI);
        particulasVivas[j][i] = true;
      }
    }
  }

  popStyle();
}


void viviendo() {
  for (int j = 0; j < particulasActivas; j++) {
    for (int i = 0; i < cantidadDeParticulas; i++) {

      if (particulasVivas[j][i] == true) {

        tiempoDeVida[j][i]++;
        println(miraAngulo[j][i]);
        vel_X[j][i] = -2 * cos(radians(miraAngulo[j][i]));
        vel_Y[j][i] = -2 * sin(radians(miraAngulo[j][i]));
        partX[j][i] +=  vel_X[j][i];
        partY[j][i] +=  vel_Y[j][i];
        circle( partX[j][i], partY[j][i], 20);
      }

      if (tiempoDeVida[j][i] >= 100) {

        particulasVivas[j][i] = false;
        tiempoDeVida[j][i] = 0;
      }
    }
  }
}
