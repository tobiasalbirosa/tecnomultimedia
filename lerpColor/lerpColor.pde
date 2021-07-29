float colorMap;
void setup(){
   size(400,400);
  surface.setResizable(true);
  ellipseMode(CENTER);
}
void draw(){
  background(0,0,120);
  for(int i = width; i > 0; i-=width/15){
    //noFill();
    for(int iColor = 0;iColor < 10; iColor++){
        colorMap = map(iColor*i/5,0,500,0,1);
          fill(lerpColor(color(255,255,255),color(255,0,0),colorMap));
         // stroke(iColor*i/10,0,0);
         noStroke();
         // stroke(lerpColor(color(255,255,255),color(255,0,0),colorMap));
          circle(width/2,height/2,i-iColor*4);
          println(iColor*i/5);
    }
  }
}
