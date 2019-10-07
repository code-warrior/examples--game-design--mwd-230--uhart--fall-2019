import processing.sound.*;

final int MAX_VOLUME = 1;
final int NO_VOLUME = 0;
final int MIN_HUMAN_HEARING = 20;
final int MAX_HUMAN_HEARING = 20000;

SinOsc sineOscillator = new SinOsc(this);

void setup() {
  fullScreen();
}

void draw() {
  // mouseY maps (0, height) to (MAX_VOLUME, NO_VOLUME)
  float volume = map(mouseY, 0, height, MAX_VOLUME, NO_VOLUME);
  
  //mouseX maps (0, width) to (MIN_HUMAN_HEARING, MAX_HUMAN_HEARING)
  float sineWave = map(mouseX, 0, width, MIN_HUMAN_HEARING, MAX_HUMAN_HEARING);

  sineOscillator.play(sineWave, volume);
}
