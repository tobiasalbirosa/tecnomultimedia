char letra = 'A';
void setup(){
}
void draw(){
  println(letra);
  letra++;
  if(letra == 91){
    letra = 65;
  }
}
