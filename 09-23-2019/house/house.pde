/**
Code from p42 of Greenberg, Xu, and Kumar’s Processing: Creative Coding and Generative Art in Processing 2.
Modified by Roy Vanegas on 20 September 2019
*/

public enum WindowsSide {
  LEFT, RIGHT;
}

void drawWindows(WindowsSide side) {
  switch(side) {
    case LEFT:
      rect(85, 300, 40, 40);
      rect(130, 300, 40, 40);
      rect(85, 345, 40, 40);
      rect(130, 345, 40, 40);

      break;

    case RIGHT:
      rect(230, 300, 40, 40);
      rect(275, 300, 40, 40);
      rect(230, 345, 40, 40);
      rect(275, 345, 40, 40);

      break;

    default:
      println("That was an invalid argument to the drawWindows method");

      break;
  }
}

void drawRoof() {
  triangle(50, 250, 350, 250, 200, 50);
}

void drawMainBlock() {
  rect(50, 250, 300, 300);
}

void drawDoor() {
  // door
  rect(175, 450, 50, 100);

  // door knob
  ellipse(185, 515, 6, 6);
}

void drawHouse() {
  drawRoof();
  drawMainBlock();
  drawWindows(WindowsSide.LEFT);
  drawWindows(WindowsSide.RIGHT);
  drawDoor();
}

void setup () {
  size(400, 600);
  drawHouse();
}
