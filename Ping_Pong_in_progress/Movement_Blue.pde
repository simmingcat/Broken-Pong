private int paddleUpBlue = 500 ;
public int paddleUpBlueN;


void movementDrawBlue() {
  paddleUpBlueN = paddleUpBlue;
  if (keyPressed)movementBlue();
  stroke(teal);
  fill(darkTeal);
  rect(paddleMoveXBlue, paddleUpBlue, paddleWidth, paddleHeight, 5);
  noFill();
  noStroke();
}

void movementBlue() {

  if (keyCode == UP || key == 'w') {
    paddleUpBlue += -2;
  }

  if (keyCode == DOWN || key == 's') {
    paddleUpBlue += 2;
  }
}
