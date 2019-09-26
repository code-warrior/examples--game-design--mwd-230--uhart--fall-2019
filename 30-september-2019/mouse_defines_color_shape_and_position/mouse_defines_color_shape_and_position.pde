/*
   MOUSE DEFINES COLOR, SHAPE, AND POSITION
   22 September 2013

   Alter the color, shape, and position of an ellipse by moving the mouse
   within the display window.

   — Roy Vanegas
*/

// Declare three floats that will be used to fill the color of the ellipse.
float red, green, blue;

// Alter the level of transparency/opacity by modifying the following value.
final int ALPHA_LEVEL = 10;

void setup() {
  size(displayWidth, displayHeight);
}

void draw() {
  noStroke();

  /*
    Scale the red channel’s upper limit to 255, based on the mouse’s x position and
    the width of the display window.
  */
  red = (mouseX * 255) / width;

  // Do the same for the green channel.
  green = (mouseY * 255) / height;

  /*
    Scale the blue channel’s upper limit to 255, but do so after calculating the
    upper limits or red and green.
  */
  blue = (red + green) / 2;

  fill(red, green, blue, ALPHA_LEVEL);

  /*
    Use the mouse’s co-ordinates for the center of the ellipse and also the ellipse’s
    width and height.
  */
  ellipseMode(CENTER);
  ellipse(mouseX, mouseY, mouseX, mouseY);

  // println( "Red is " + red + ", green is " + green  + ", and blue is " + blue );
}
