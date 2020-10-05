PFont Score;
//String zero =" 0";
int Blue, Red;
String BlueScore, RedScore;
//Boolean regame = false;
Boolean stop = false;


void scoreBoardSetup() {
  Blue = 0;
  Red = 0;
}

void BlueScore() {
  gameOverBlue();
  if (keyPressed)restartKeyPress();
  if (keyPressed)unstuck();
  if (mousePressed)mousePressRestart();
  BlueScore = Integer.toString(Blue);

  fill(teal);
  textAlign(CENTER, CENTER);
  textSize(30);
  text(BlueScore, scoreBlueWidth, scoreBlueHeight, scoreBlueX, scoreBlueY);
  //scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlue
}

void RedScore() {
  gameOverRed();
  if (keyPressed)restartKeyPress();
  if (keyPressed)unstuck();
  if (mousePressed)mousePressRestart();
  RedScore = Integer.toString(Red);

  fill(red);
  textAlign(CENTER, CENTER);
  textSize(30);
  text(RedScore, scoreRedWidth, scoreRedHeight, scoreRedX, scoreRedY);
  //scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY
}

void bluescore() {
  if (ballX < 10) {
    Red += 1;
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX = 5;
    ballSpeedY = 5;
    loop();
  }
}

void redscore() {
  if (ballX > 1356) {
    Blue += 1;
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX = 5;
    ballSpeedY = 5;
    loop();
  }
}

void unstuck() {
  if (key =='u') {
    ballX = width*1/2;
    ballY = height*1/2;

    loop();
  }
}
