PFont Score;
String Re = "Restart";
//String zero =" 0";
int Blue;
int Red;
String BlueScore;
String RedScore;
String CRTC = "Press r to Restart";
Boolean regame = false;
Boolean stop = false;


void scoreBoardSetup() {
  Blue = 0;
  Red = 0;
}

void BlueScore() {
  gameOver();
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

void restartText() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(Re, restartWidth, restartHeight, restartWidth2, restartHeight2);
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
void gameOver() {
  if (Blue > 29 || gameScreen == 3) { 
    background(0);
    stop = true;
    ballX = width*1/2;
    ballY = height*1/2;
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER, CENTER);
    textSize(30);
    text(GO, 0, 0, 1366, 768);
    
    textSize(20);
    textAlign(CENTER, CENTER);
    text(CRTC, width*1/3, height*1/2, width*1/3, 100);
    loop();
  }
}


void mousePressRestart() {
  if (mouseX > restartWidth && mouseX < restartWidth2 && mouseY > restartHeight && mouseY < restartHeight2 ) {
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX= 5;
    ballSpeedY = 5;
    Blue = 0;
    Red = 0;
    loop();
  }
}

void restartKeyPress() {
  if (key =='r') {
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX = 2;
    ballSpeedY = 2;
    Blue = 0;
    Red = 0;
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
