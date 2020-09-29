private int paddleDownRed = 500;

public int paddleDownRedN;

void movementDrawRed() {
  if (keyPressed == true) {
    paddleDownRedN = paddleDownRed;
    if (keyPressed)movementRed();
    stroke(red);
    fill(darkRed);
    rect(paddleMoveXRed, paddleDownRed, paddleWidth, paddleHeight, 5);
    noFill();
    noStroke();
  }
}

void moveBothRed() {
  if (keyPressed == true) {
    movementBlue();
  }
}

void speedUpRed() {
  if (ballX > width-netWidth-paddleWidth-ballSize*1/2 + 1) {
    paddleDownRed = paddleDownRed + 2;
  }
}


void movementRed() {
  if (keyCode == UP || key == 'i') {
    paddleDownRed -= 2;
  }

  if (keyCode == DOWN || key == 'k') {
    paddleDownRed += 2;
  }
}
