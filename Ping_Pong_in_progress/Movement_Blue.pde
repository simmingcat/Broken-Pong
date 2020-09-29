private int paddleUpBlue = 500 ;
public int paddleUpBlueN;


void movementDrawBlue() {
  if (keyPressed == true) {
  paddleUpBlueN = paddleUpBlue;
  if (keyPressed)movementBlue();
  stroke(teal);
  fill(darkTeal);
  rect(paddleMoveXBlue, paddleUpBlue, paddleWidth, paddleHeight, 5);
  noFill();
  noStroke();
  }
}

void moveBothBlue(){
  if (keyPressed == true) {
    movementRed();
  }
}

void movementBlue() {

  if (keyCode == UP || key == 'w') {
    paddleUpBlue += -2;
  }

  if (keyCode == DOWN || key == 's') {
    paddleUpBlue += 2;
  }
}
