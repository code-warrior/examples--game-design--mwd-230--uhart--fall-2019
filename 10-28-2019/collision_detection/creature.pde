void drawCreature () {
  noStroke();
  rect(creatureTopLeftCorner[X], creatureTopLeftCorner[Y], WIDTH, WIDTH);
}

void moveCreature (int direction) {
  switch(direction) {
    case UP: {
      creaturesTopEdge = (creatureTopLeftCorner[Y] - MOVE_FACTOR);
      creaturesLeftEdge = (creatureTopLeftCorner[X]);
      creaturesRightEdge = (creatureTopLeftCorner[X] + WIDTH);

      if (collisionOccursWhenCreatureIsMoved(UP)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[Y] -= MOVE_FACTOR;
        drawCreature();
      }

      break;
    }

    case RIGHT: {
      creaturesTopEdge = (creatureTopLeftCorner[Y]);
      creaturesRightEdge = (creatureTopLeftCorner[X] + WIDTH + MOVE_FACTOR);
      creaturesBottomEdge = (creatureTopLeftCorner[Y] + HEIGHT);

      if (collisionOccursWhenCreatureIsMoved(RIGHT)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[X] += MOVE_FACTOR;
        drawCreature();
      }

      break;
    }

    case DOWN: {
      creaturesBottomEdge = (creatureTopLeftCorner[Y] + HEIGHT + MOVE_FACTOR);
      creaturesLeftEdge = (creatureTopLeftCorner[X]);
      creaturesRightEdge = (creatureTopLeftCorner[X] + WIDTH);

      if (collisionOccursWhenCreatureIsMoved(DOWN)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[Y] += MOVE_FACTOR;
        drawCreature();
      }

      break;
    }

    case LEFT: {
      creaturesTopEdge = (creatureTopLeftCorner[Y]);
      creaturesLeftEdge = (creatureTopLeftCorner[X] - MOVE_FACTOR);
      creaturesBottomEdge = (creatureTopLeftCorner[Y] + HEIGHT);

      if (collisionOccursWhenCreatureIsMoved(LEFT)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[X] -= MOVE_FACTOR;
        drawCreature();
      }

      break;
    }
  }
}
