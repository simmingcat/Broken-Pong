int paddleDownRed = 500;

int paddleDownRedN;

void movementDrawRed(){
   paddleDownRedN = paddleDownRed;
   if(keyPressed)movementRed();
   fill(white);
   rect(paddleMoveXRed, paddleDownRed, paddleWidth, paddleHeight , 5);
   noFill();
}


void movementRed(){
  if (keyCode == UP || key == 'i') {
      paddleDownRed += -2;
    }
    
    if (keyCode == DOWN || key == 'k') {
      paddleDownRed += 2;
    }
}
