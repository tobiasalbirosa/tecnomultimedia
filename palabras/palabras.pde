String [] palabras = new String[15]; 
palabras[0] = "palabra";
char[] letras = palabras[0].toCharArray();
 
char[] letrasNuevas = palabras[0].toCharArray();

for (int i = 0; i < letras.length; i++) {
  println(letrasNuevas[i]);
}

for (int i = 0; i < letras.length; i++) {
  println(letras[i]);
}
