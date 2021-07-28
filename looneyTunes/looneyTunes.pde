 void setup(){
   size(400,400);
  surface.setResizable(true);
  ellipseMode(CENTER);
}
void draw(){
  background(0,0,120);
  for(int i = width; i > 0; i-=width/10){
    noStroke();
    for(int iColor = 0;iColor < 10; iColor++){
          fill(iColor*i/10,0,0);
          circle(width/2,height/2,i-iColor*5);
    }
  }
}
