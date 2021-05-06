PFont miFuente;
PFont miOtraFuente;
void setup(){
  size(800,500);
  miFuente = loadFont("Impact-48.vlw");
  miOtraFuente = loadFont("Rockwell-Italic-48.vlw");
}

void draw(){
    background(0);
    fill(random(255),random(255),random(255));
    
    textFont(miFuente);
    text("Hola",50,50);
   
    
    fill(random(255),random(255),random(255));

    textFont(miOtraFuente);
    text("Cualquier otro texto",50,150);

}
