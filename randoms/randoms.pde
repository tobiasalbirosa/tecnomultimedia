
float canalRandom = 0;
float canalRandom2;
float canalRandom3;
float randomX;
float randomY;

void setup(){
 size(400,400);
 ellipseMode(CENTER);
 frameRate(6);
}
void draw(){
  background(0);
  randomX = random(0, width);
  randomY = random(0,height);
  
  canalRandom = random(0, width);
  canalRandom2 = random(0, width);
  canalRandom3 = random(0, width);


  
  fill(canalRandom, canalRandom2 , canalRandom3);
  
  ellipse(randomX,randomY, mouseX,mouseY);

}
