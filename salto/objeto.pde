class Objeto {
  float x, y, limiteDeSalto, tam, vel, piso;
  boolean saltando, subiendo, cayendo;
  Objeto(float x, float y, float tam, float vel) {
    this.x = x;
    this.y = y;
    this.piso = y;
    this.tam = tam;
    this.vel = vel;
    
    this.limiteDeSalto = tam * 2;
    this.subiendo = true;
  }
  void dibujar() {
    square( this.x, this.y, this.tam);
    this.actualizar();
  }
  void actualizar() {
    if (keyPressed && keyCode == UP && !this.saltando) {
      println("UP");
      this.saltando = true;
    } else if (keyPressed && keyCode == LEFT && !this.saltando) {
      println("LEFT");
      this.x -= this.vel;
    } else if (keyPressed && keyCode == RIGHT && !this.saltando) {
      println("RIGHT");
      this.x += this.vel;
    }
    if (this.saltando == true) {
      this.logicaDeSalto();
    }
  }
  void logicaDeSalto() {
    if (this.subiendo == true && this.cayendo == false) {
      this.y--;
      if (this.y < height - this.limiteDeSalto) {
        this.cayendo  = true;
        this.subiendo = false;
      }
    } else if (this.subiendo == false && this.cayendo == true) {
      this.y++;
      if (this.y >= this.piso) {
        this.cayendo  = false;
        this.subiendo = true;
        this.saltando = false;
      }
    }
    println(this.subiendo);
  }
}
