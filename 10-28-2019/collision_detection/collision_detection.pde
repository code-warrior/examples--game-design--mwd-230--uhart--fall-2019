import processing.sound.*;

SoundFile crashSound;

void setup () {
  crashSound = new SoundFile(this, "audio/168312__likeclockwork__eh-crash-drum30.wav");
  size(174, 174);
}

void draw () {
  background(25);
  drawObstacle();
  drawCreature();
}
