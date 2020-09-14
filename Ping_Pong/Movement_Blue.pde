int paddleUpBlue = 500 ;

int paddleUpBlueN;


void movementDrawBlue() {
  paddleUpBlueN = paddleUpBlue;
  if (keyPressed)movementBlue();
  rect(paddleMoveXBlue, paddleUpBlue, paddleWidth, paddleHeight, 5);
}

void movementBlue() {

  if (keyCode == UP || key == 'w') {
    paddleUpBlue += -2;
  }

  if (keyCode == DOWN || key == 's') {
    paddleUpBlue += 2;
  }
}
