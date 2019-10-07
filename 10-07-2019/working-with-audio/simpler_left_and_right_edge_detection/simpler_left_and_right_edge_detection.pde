import processing.sound.*;

SoundFile soundFile;

int speed = 15;

// Set our starting position
int x = 100;
int y = 200;

final int DIAMETER = 100;

void setup() {
  size(400, 400);
  soundFile = new SoundFile(this, "audio/486806__erokia__msfxp3-168.wav");
}

void draw() {
  // Note the hex value for color
  background(#fafedc);

  // Increment our xPosition
  x += speed;

  // If our circle hits an edge, reverse the speed polarity
  if (((x + DIAMETER) > width) || (x < 0) ) {
    speed *= -1;
    // soundFile.stop();
    soundFile.play();
  }

  noStroke();
  fill(0, 51, 255);
  ellipseMode(CORNER);
  circle(x, y, DIAMETER);
}
