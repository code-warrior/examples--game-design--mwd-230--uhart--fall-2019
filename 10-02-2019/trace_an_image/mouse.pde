void drawEyes() {
  noStroke();

  /* Set a color for the eyes. */
  fill(EYE_COLOR);

  /* Draw the left eye. */
  circle(305.0, 277.0, EYE_DIAMETER);

  /* Draw the right eye. */
  circle(390.0, 287.0, EYE_DIAMETER);
}

void drawNose() {
  noStroke();

  /* Set a color for the nose. */
  fill(NOSE_COLOR);

  /* Draw the nose. */
  circle(310.0, 365.0, NOSE_DIAMETER);
}

void drawWhiskers() {
  stroke(WHISKER_COLOR);

  /* Draw the left set of whiskers. */
  line(280, 336, 200, 311);
  line(290, 349, 215, 356);
  line(280, 359, 200, 375);

  /* Draw the right set of whiskers. */
  line(366, 336, 481, 311);
  line(356, 349, 445, 356);
  line(346, 359, 423, 375);
}

void drawLeftEar() {
  noStroke();

  /* Set a color for the ear.*/
  fill(EAR_COLOR);

  beginShape(); /* Begin the shape that will be created by the three vertices. */
  vertex(305, 203);
  vertex(328, 225);
  vertex(300, 245);
  endShape(); /* End the shape, which is required to complete the shape by the three vertices. */
}

void drawRightEar() {
  // float startDegrees = -200.0;
  // float stopDegrees = 90.0;
  // float startRadians = radians(startDegrees);
  // float stopRadians = radians(stopDegrees);

  noStroke();

  /* Set a color for the ear.*/
  fill(EAR_COLOR);
  /*
    1. Set the midpoint of the arc to 455, 245.
    2. Set the arc’s width to EAR_WIDTH.
    3. Set the arc’s height to EAR_HEIGHT.
    4. Begin drawing the arc at about 8:30 o’clock (-200).
    5. Finish drawing the arc at about 6:00 o’clock (90).

    Note: 0 degrees (radians(0)) is 3:00 o’clock.
  */
  arc(455.0, 245.0, EAR_WIDTH, EAR_HEIGHT, radians(-200.0), radians(90.0));
}

void drawEars() {
  drawLeftEar();
  drawRightEar();
}

void drawMouse() {
  drawEyes();
  drawNose();
  drawWhiskers();
  drawEars();
}
