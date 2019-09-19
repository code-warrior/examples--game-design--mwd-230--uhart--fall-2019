/**
 * Uncomment the comments in the draw() function to see how transparencies
 * affect the visibility of the layers.
 */
void setup () {
  background(200);
}

void draw() {
  noStroke();

  fill(127, 55, 120);
  // fill(127, 55, 120, 127);
  rect(0, 0, 20, 20);

  fill(127, 0, 55);
  // fill(127, 0, 55, 127);
  rect(0, 0, 30, 30);

  fill(0, 0, 55);
  // fill(0, 0, 55, 127);
  rect(0, 0, 40, 40);

  fill(0, 127, 55);
  // fill(0, 127, 55, 127);
  rect(0, 0, 50, 50);

  fill(150, 150, 127);
  // fill(150, 150, 127, 127);
  rect(0, 0, 60, 60);
}
