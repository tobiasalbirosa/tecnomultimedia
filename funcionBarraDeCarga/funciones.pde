void barraDeCarga(float x, float y, float ancho, float _tiempo) {
  tiempo+=5;  
  println("Tiempo global: ", tiempo);
  if (_tiempo >= 100) { 
    tiempo = 0;
  }
  background(0);
  fill(255, 0, 0);
  rect(x, y, ancho, tiempo);
  fill(255);
  text(tiempo, x, y+tiempo);
}
