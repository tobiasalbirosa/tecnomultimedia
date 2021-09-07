void actualizarEstado(int valor) {
  println(valor,"Estado nro: "+estado);
  if (valor == 1) {
    estado++;
  } else if (valor == 0) {
    estado--;
  }
}
