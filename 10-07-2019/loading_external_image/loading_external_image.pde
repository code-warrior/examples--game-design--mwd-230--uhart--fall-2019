/*
  Image from https://www.flickr.com/photos/mooglove/3299456051/sizes/m/

  Image width: 500
  Image height: 395
*/

PImage sleepingPigs =
  loadImage("https://live.staticflickr.com/3039/3299456051_ebe29c8e62.jpg");
  
/* Equivalent to the width and height of the image */
size(500, 395);

/* Place the image on the canvas with its upper left corner at the co-ordinates (0, 0) */
image(sleepingPigs, 0, 0);
