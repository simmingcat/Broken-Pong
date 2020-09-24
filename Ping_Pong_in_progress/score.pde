PFont Score;
int Blue, Red;
String BlueScore, RedScore;
Boolean regame = false;
Boolean stop = false;


void scoreBoardSetup() {
  Blue = 0;
  Red = 0;
}

void scoreBoardDraw() {
  if (keyPressed)restartKeyPress();
  
  BlueScore = Integer.toString(Blue);
  RedScore = Integer.toString(Red);
  
  fill(random(0,255), random(0,255), random(0,255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(BlueScore, scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlueY);
  
  
  fill(random(0,255), random(0,255), random(0,255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(RedScore, scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY);
  
}

void restartKeyPress() {
  if (key =='r') {
    ballX = width*1/2;
    ballY = height*1/2;
    Blue = 0;
    loop();
  }
}
