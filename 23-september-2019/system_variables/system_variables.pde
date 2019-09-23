/*
  SYSTEM VARIABLES
  19 September 2013

  Processing includes system variables that are designed to capture input events
  from your screen, mouse, and keyboard. They’re listed below, in the draw
  function.

  Interact with this sketch by moving your mouse, pressing its buttons, and
  typing at the keyboard.

  Be aware that these system variables may be overridden locally, meaning that
  you can assign a different value to either or all of them without warning.

  Uncomment the multi-line commented section at the beginning of the draw
  function to see an example of this. All the system variables will be wiped
  out; you’ve been warned.

  — Roy Vanegas
*/

void setup() {
  size(800, 700);
}

int y = 0;                  // The varying y coordinate for all text
final int LINE_HEIGHT = 42; // The fixed value added to the y coordinate
final int X = 20;           // The permanent x coordinate for all text
final int BLACK = 0;        // The color black assigned to the background

void draw() {
  background(BLACK);
  textSize(20);

  text("The height of your screen is " + displayHeight, X, y += LINE_HEIGHT);
  text("The width of your screen is " + displayWidth, X, y += LINE_HEIGHT);
  text("Is your computer’s focus on the current sketch, or outside it? " +
    focused, X, y += LINE_HEIGHT);
  text("This sketch has run " + frameCount + " frames since it was first run",
    X, y += LINE_HEIGHT);
  text( "This sketch’s frame rate per second is " + frameRate,
    X, y += LINE_HEIGHT);
  text("The display window’s height is " + height, X, y += LINE_HEIGHT);
  text("The display window’s width is " + width, X, y += LINE_HEIGHT);
  text("Is it true that a button on your mouse was pressed? " + mousePressed,
    X, y += LINE_HEIGHT);

  if (mousePressed) {
    switch (mouseButton) {
      case LEFT:
        text("The left mouse button is being pressed",
          X, y += LINE_HEIGHT);

        break;

      case RIGHT:
        text("The right mouse button is being pressed",
          X, y += LINE_HEIGHT);

        break;

      case CENTER:
        text("The center mouse button is being pressed",
          X, y += LINE_HEIGHT);

        break;

      default:
        text("An unrecognized mouse button is being pressed",
          X, y += LINE_HEIGHT);

        break;
    }
  } else {
    text("No mouse button is being pressed", X, y += LINE_HEIGHT);
    text("The x position of the mouse is " + mouseX, X, y += LINE_HEIGHT);
    text("The y position of the mouse is " + mouseY, X, y += LINE_HEIGHT );
    text("The previous x position of the mouse is " + pmouseX, X, y += LINE_HEIGHT);
    text("The previous y position of the mouse is " + pmouseY, X, y += LINE_HEIGHT);
    text("Is it true that any key was pressed on the keyboard? " + keyPressed,
      X, y += LINE_HEIGHT);
    text("The key typed at the keyboard is " + key, X, y += LINE_HEIGHT);
    text("The numerical equivalent of the key you typed is " +  keyCode,
      X, y += LINE_HEIGHT);
  }

  y = 0; // Reset the y value
}
