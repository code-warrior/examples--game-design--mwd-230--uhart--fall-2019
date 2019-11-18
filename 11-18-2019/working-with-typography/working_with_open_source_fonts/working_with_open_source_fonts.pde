PFont displayTypeface, readingTypeface;
final int EM = 16;
final int DISPLAY_TYPE_SIZE = (2 * EM);
final float READING_TYPE_SIZE = (1.5 * EM);

size(500, 500);
background(255);
// The font must be located in the sketch’s “data” directory to load successfully.
displayTypeface = createFont("fonts/Bebas_Neue/BebasNeue-Regular.ttf", DISPLAY_TYPE_SIZE);
readingTypeface = createFont("fonts/Roboto/Roboto-Thin.ttf", READING_TYPE_SIZE);

textFont(displayTypeface);
fill(0);
text("I am Display Type", 10, (DISPLAY_TYPE_SIZE + 10));

textFont(readingTypeface);
fill(127);
text("I am your reading text.", 10, (DISPLAY_TYPE_SIZE + READING_TYPE_SIZE) + 15);
