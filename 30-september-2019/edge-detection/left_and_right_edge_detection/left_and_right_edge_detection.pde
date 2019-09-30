// The diameter of the ball. Change this to increase/decrease the size of the ball.
final int DIAMETER = 60;

// The amount by which the ball will move. Change this to increase/decrease the
// “speed” at which the ball moves.
final int STEP_WIDTH = 10;

// Set the initial “x” and “y” co-ordinates for the ball.
float x = DIAMETER;
float y = 100;

// And, because the ball will iniitally be moving right, initialize this Boolean
// to true.
boolean isMovingRight = true;

void setup() {
  size(displayWidth, 200);
  smooth();
}

void draw() {
  background(255);

  // The following two if statements test whether the ball has collided with the
  // left or right edges of the canvas.

  // Handle the right edge case.
  if ((x + (DIAMETER / 2)) > displayWidth) {
    isMovingRight = false;
  }

  // Handle the left edge case.
  if ((x - (DIAMETER / 2)) < 0) {
    isMovingRight = true;
  }

  // If the ball is moving towards the right, increase x’s value. Otherwise,
  // decrease x’s value in order to move it to the left.
  x = (true == isMovingRight) ? (x + STEP_WIDTH) : (x - STEP_WIDTH);

  noStroke();
  fill(127);
  ellipseMode(CENTER);
  circle(x, y, DIAMETER);
}
