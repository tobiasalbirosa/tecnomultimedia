color gradiente, rojo, amarillo;
float map;
void setup() {
  size(300, 300);
  rojo = color(255, 0, 0);
  amarillo = color(255, 255, 0);
  surface.setResizable(true);
}
void draw() {
  for (int i = 0; i < height; i++) {
    map = map(i, 0, height, 0, 1);
    gradiente = lerpColor(rojo, amarillo, map);
    stroke(gradiente);
    line(0, i, width, i);
  }
}
