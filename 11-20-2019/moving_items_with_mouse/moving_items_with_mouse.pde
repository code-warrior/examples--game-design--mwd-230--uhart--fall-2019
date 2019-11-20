/*
Original code at https://processing.org/examples/mousefunctions.html
*/
float centerXofBox;
float centerYofBox;
final int HALF_BOX_SIZE = 75;
boolean mouseIsOverBox = false;
boolean mouseButtonIsDownOverBox = false;
float xOffset = 0.0;
float yOffset = 0.0;

void setup() {
  size(640, 360);

  // Recall that “width” and “height” are system variables defined by Processing
  // that are assigned the first and second arguments to the size function.
  // Thus, width is implicitly assigned 640; height is assigned 360.

  // Calculate the center of the sketch...
  centerXofBox = (width / 2.0);
  centerYofBox = (height / 2.0);

  // and set rectMode to RADIUS, which will assign the first two arguments to
  // the “rect” function as the center point for the rectangle, not the upper
  // left corner.
  rectMode(RADIUS);
}

void draw() {
  // Repaint the sketch so the box doesn’t leave a trail.
  background(0);

  // Test if the cursor is over the box
  if (mouseX > (centerXofBox - HALF_BOX_SIZE) && mouseX < (centerXofBox + HALF_BOX_SIZE) &&
      mouseY > (centerYofBox - HALF_BOX_SIZE) && mouseY < (centerYofBox + HALF_BOX_SIZE) ) {
    mouseIsOverBox = true;
  } else {
    mouseIsOverBox = false;
  }

  rect(centerXofBox, centerYofBox, HALF_BOX_SIZE, HALF_BOX_SIZE);
}

/**
 * If the mouse’s button is being pressed down AND it’s over the box, set the
 * Boolean variable accordingly. Then, calculate the offset of the mouse’s “x”
 * and “y” co-ordinates with respect to the box’s “x” and “y” co-ordinates at
 * its center. NOTE: This offset calculation need only be done once per mouse
 * down event.
 */
void mousePressed() {
  if (mouseIsOverBox) {
    mouseButtonIsDownOverBox = true;
  } else {
    mouseButtonIsDownOverBox = false;
  }

  xOffset = (mouseX - centerXofBox);
  yOffset = (mouseY - centerYofBox);
}

/**
 * If the mouse is being dragged AND it’s over the box, recalculate the
 * co-ordinates of the box’s center origin so the draw function can render the
 * box in the newly-dragged spot defined by the mouse.
 */
void mouseDragged() {
  if (mouseButtonIsDownOverBox) {
    centerXofBox = (mouseX - xOffset);
    centerYofBox = (mouseY - yOffset);
  }
}

/**
 * This function is called when the mouse button is released and listens as long
 * as the draw function is being used.
 */
void mouseReleased() {
  mouseButtonIsDownOverBox = false;
}
