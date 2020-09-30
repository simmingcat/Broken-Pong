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

float randomWidth;
float randomHeight;
float randomX;
float randomY;

float hardWidth;
float hardHeight;
float hardX;
float hardY;

float titleWidth;
float titleHeight;
float titleX;
float titleY;

float easyWidth;
float easyHeight;
float easyX;
float easyY;
float mediumWidth ;
float mediumHeight;
float mediumX;
float mediumY;

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

  randomWidth = width*2/3;
  randomHeight = 0;
  randomX = 374;
  randomY = 80;

  scoreRedWidth = 1286;
  scoreRedHeight = 0;
  scoreRedX = 1366;
  scoreRedY = 80;

  scoreBlueWidth = 0;
  scoreBlueHeight = 0;
  scoreBlueX = 80;
  scoreBlueY = 80;

  hardWidth = 0;
  hardHeight = 80;
  hardX = width*1/3;
  hardY = 20;

  easyWidth = width*1/3 ;
  easyHeight = 80;
  easyX = width*1/3;
  easyY = 20;

  mediumWidth = width*2/3;
  mediumHeight = 80;
  mediumX = width*1/3;
  mediumY = 20;

  titleWidth = width*1/3;
  titleHeight = 0;
  titleX = width*1/3;
  titleY = 80;

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
