// What happens if SPACING and/or BLOCK_SIZE change?
final int SPACING = 100;
final int BLOCK_SIZE = 100;

fullScreen();

// What happens if the values to i and/or j change?
for (int i = 0; i < width; i += SPACING) {
  for (int j = 0; j < height; j += SPACING) {
    fill(random(255), random(255), random(255));
    rect(i, j, BLOCK_SIZE, BLOCK_SIZE);
  }
}
