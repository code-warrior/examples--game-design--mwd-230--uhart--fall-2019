PImage backgroundImage;
boolean backgroundImageIsShowing = true;
String imagePath = "img/IMG_0933.jpg";

void keyPressed() {
  if (H_KEY == keyCode) {
    if (backgroundImageIsShowing) {
      imagePath = "img/blank.png";
      backgroundImageIsShowing = false;
    } else {
      imagePath = "img/IMG_0933.jpg";
      backgroundImageIsShowing = true;
    }

    backgroundImage = loadImage(imagePath);
    background(BACKGROUND_COLOR);
    image(backgroundImage, 0, 0);
  }
}

void setup() {
  backgroundImage = loadImage(imagePath);

  /* Set the dimensions of the canvas to the width and height of the image. */
  size(768, 576);

  /* Set the background color of the canvas. */
  background(BACKGROUND_COLOR);
  image(backgroundImage, 0, 0);
}

void draw() {
  drawMouse();
}
