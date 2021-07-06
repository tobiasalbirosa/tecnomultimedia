float valorDelRuido;
float escalaDelRuido=0.02;
void setup() {
  size(400,400);
}
void draw() {
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width/2; x++) {
      noiseDetail(3,0.5);
      valorDelRuido = noise((x) * escalaDelRuido, (y) * escalaDelRuido);
      stroke(valorDelRuido*255);
      point(x,y);
      noiseDetail(8,0.65);
      valorDelRuido = 
      noise((mouseX + x + width/2)  * escalaDelRuido,(mouseY + y) * escalaDelRuido);
      stroke(valorDelRuido * 255);
      point(x + width/2, y);
    }
  }
}
