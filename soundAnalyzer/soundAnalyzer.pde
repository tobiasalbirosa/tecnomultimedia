import processing.sound.*;
FFT fft;
Amplitude amp;
SoundFile song;
float amplitudSonora;
float variable = 0;
// TODO VA A DEPENDER DE LA AMPLITUD SONORA (ESTA VA DE 0.0 A 1)
void setup() {
  size(255, 255);
  song  = new SoundFile(this, "song.mp3");
  song.loop();
  amp = new Amplitude(this);
}

void draw() {
  amp.input(song);
  amplitudSonora = amp.analyze();

  println(amplitudSonora);
  // EJEMPLOS DE COMO USAR LA VARIABLE DE VOLUMEN DE LA CANCION:
  variable = variable + amplitudSonora*10;
  background(variable);

  circle(width/2,height/2, amplitudSonora*100);
  rect(0,variable,width,20);
  if (variable > 255) {
    variable = 0;
  }
}
