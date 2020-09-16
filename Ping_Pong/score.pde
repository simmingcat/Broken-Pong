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
  BlueScore = Integer.toString(Blue);
  RedScore = Integer.toString(Red);
  
  fill(random(0,255), random(0,255), random(0,255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(BlueScore, scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlueY);
  text(RedScore, scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY);
}

void restart() {
  if (key == 'R' || key == 'r') {
    regame = false;
    stop = false;
    procssingSetup();
    loop();
  }
}
