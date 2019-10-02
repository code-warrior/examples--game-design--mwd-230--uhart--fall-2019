final int OFFSET = 10;

// Set the size of the canvas
size(400, 400);

// Remove the stroke around all items that draw a stroke by default.
noStroke();

fill(100, 100, 255);
rect(0, 0, (width / 2), (height / 2));

for(int i = 0; i < 21; i++) {
  fill(100, 100, 255, (25 - i));
  rect((0 + (i * OFFSET)), (0 + (i * OFFSET)), (width / 2), (height / 2));
}
