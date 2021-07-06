float valorDelRuido;
float escalaDelRuido;
void setup() {
  size(200, 200);
}
void draw() {
  escalaDelRuido = map(mouseX, 0, width, 0, .5);
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      valorDelRuido = noise((x) * escalaDelRuido, (y)  * escalaDelRuido);
      stroke(valorDelRuido * 255);
      point(x, y);
    }
  }
}
