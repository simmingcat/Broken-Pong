
float netWidth;
float paddleWidth;
float paddleHeight;
float paddleMoveXBlue;
float paddleMoveXRed;

float paddleMoveYBlue;
float paddleMoveYRed;

float randomWidth;
float randomHeight;
float randomWidth2;
float randomHeight2;


void procssingSetup() {

  netWidth = 40;
  paddleWidth = width*1/76;
  paddleHeight = height*1/5;

  paddleMoveXBlue = netWidth;
  paddleMoveXRed = width - netWidth - paddleWidth;

  paddleMoveYBlue = height*1/2-paddleHeight*1/3;
  paddleMoveYRed = height*1/2-paddleHeight*1/3;
  
  randomWidth = 80 ;
  randomHeight= 0; 
  randomWidth2 = 374;
  randomHeight2 = 80;


  /*
  ballMoveX;
   ballMoveY;
   ballSpeedX;
   ballSpeedY;
   */
  /*
   
   paddleUpRed;
   paddleUpBlue;
   paddleDownRed;
   paddleDownBlue;
   
   scoreLeft;
   scoreRight;
   */
  GUI();
}

void screenChecker() {
  if (width<height) {
    println ("go back normal"); 
    exit();
  } else {
    println ("good job being normal");
  }
}
