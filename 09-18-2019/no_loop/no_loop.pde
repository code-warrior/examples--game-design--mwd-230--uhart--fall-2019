final int TRUE_GREY = 128;

void setup () {
  background(TRUE_GREY);
}

void draw() {
  noLoop();
  line(20, 20, 40, 40);
  println("Look, I’ve run only once!");
}
