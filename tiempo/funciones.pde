void reiniciarSegundos() {
  
  segundoInicial = second();
}

int obtenerSegundosDesdeYa() {

  segundoReal = second();

  segundos = (segundoReal - segundoInicial);

  if (segundoReal - segundoInicial < 0) {

    segundoInicial = 0;
  }

  return segundos;
}
