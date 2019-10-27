void keyPressed () {
  switch(keyCode) {
    case TOP_ARROW_KEY: {
      moveCreature(UP);

      break;
    }

    case RIGHT_ARROW_KEY: {
      moveCreature(RIGHT);

      break;
    }

    case BOTTOM_ARROW_KEY: {
      moveCreature(DOWN);

      break;
    }

    case LEFT_ARROW_KEY: {
      moveCreature(LEFT);

      break;
    }
  }
}
