private int paddleDownRed = 500;

public int paddleDownRedN;

void movementDrawRed(){
   paddleDownRedN = paddleDownRed;
   if(keyPressed)movementRed();
   stroke(red);
   fill(darkRed);
   rect(paddleMoveXRed, paddleDownRed, paddleWidth, paddleHeight , 5);
   noFill();
   noStroke();
}


void movementRed(){
  if (keyCode == UP || key == 'i') {
      paddleDownRed += -2;
    }
    
    if (keyCode == DOWN || key == 'k') {
      paddleDownRed += 2;
    }
}
