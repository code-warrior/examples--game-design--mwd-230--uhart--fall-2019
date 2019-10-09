public final int F_KEY = 70;
public final int S_KEY = 83;
int previousState = F_KEY;
String currentState = "F State";

void keyPressed() {
  switch(keyCode) {
    case F_KEY: {
      if (S_KEY == previousState) {
        currentState = "F State";
        previousState = F_KEY;
      }

      println(currentState);

      break;
    }

    case S_KEY: {
      if (F_KEY == previousState) {
        currentState = "S State";
        previousState = S_KEY;
      }

      println(currentState);

      break;
    }
  }
}

void draw() {}
