
float netWidth;
float paddleWidth;
float paddleHeight;
float paddleMoveXBlue;
float paddleMoveXRed;

float paddleMoveYBlue;
float paddleMoveYRed;

float restartWidth;
float restartHeight;
float restartWidth2;
float restartHeight2;

float scoreRedWidth;
float scoreRedHeight;
float scoreRedX;
float scoreRedY;

float scoreBlueWidth;
float scoreBlueHeight;
float scoreBlueX;
float scoreBlueY;

void procssingSetup() {

  netWidth = 40;
  paddleWidth = width*1/76;
  paddleHeight = height*1/5;

  paddleMoveXBlue = netWidth;
  paddleMoveXRed = width - netWidth - paddleWidth;

  paddleMoveYBlue = height*1/2-paddleHeight*1/3;
  paddleMoveYRed = height*1/2-paddleHeight*1/3;

  restartWidth = 80 ;
  restartHeight= 0; 
  restartWidth2 = 374;
  restartHeight2 = 80;

  scoreRedWidth = 1286;
  scoreRedHeight = 0;
  scoreRedX = 1366;
  scoreRedY = 80;

  scoreBlueWidth = 0;
  scoreBlueHeight = 0;
  scoreBlueX = 80;
  scoreBlueY = 80;
  
  
  /*
   scoreLeft;
   scoreRight;
   */
  GUI();
}

void screenChecker() {
  if (width<height) {
    println ("you cant play the game like this"); 
    exit();
  } else {
    println ("good job");
  }
}
