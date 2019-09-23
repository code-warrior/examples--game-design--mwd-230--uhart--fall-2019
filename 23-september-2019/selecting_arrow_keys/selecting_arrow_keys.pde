/**
 * Functions size() and smooth() must be included in public void settings() when
 * running this sketch from the command line. If running from the Processing
 * Development Environment, or PDE, then no modifications need to be made.
 */
public void settings() {
  size(640, 480);
  smooth(8); // Set smooth to the highest available by the host hardware.
}

void setup() {
  background(255);
}

void draw() {
  // Use draw() as you would normally, while still polling for key presses.
}

void keyPressed() {
  background(255);    // Clear canvas so text looks smooth.
  fill(0, 0, 0, 220); // Use opacity in order to further smooth text.
  textSize(24);       // Set the text size to 24 pixels.

  switch(keyCode) {
    case UP:
      text("You pressed ↑", 32, 32);

      break;

    case DOWN:
      text("You pressed ↓", 32, 32);

      break;

    case LEFT:
      text("You pressed ←", 32, 32);

      break;

    case RIGHT:
      text("You pressed →", 32, 32);

      break;

    default:
      text("You didn’t press any of the ↑, ↓, ←, or → keys.", 32, 32);

      break;
  }
}
