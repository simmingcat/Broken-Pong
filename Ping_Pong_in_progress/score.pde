PFont Score;
String Re = "Restart";
int Blue;
int Red;
String BlueScore;
String RedScore;
Boolean regame = false;
Boolean stop = false;


void scoreBoardSetup() {
  Blue = 0;
  Red = 0;
}

void scoreBoardDraw() {
  if (keyPressed)restartKeyPress();
  
   RedScore = Integer.toString(Red);
  
  fill(random(0,255), random(0,255), random(0,255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(RedScore, scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY);
  //scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY
  
  
  BlueScore = Integer.toString(Blue);
  
  fill(random(0,255), random(0,255), random(0,255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(BlueScore, scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlueY);
  //scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlueY
  
  fill(random(0,255), random(0,255), random(0,255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(Re, restartWidth, restartHeight, restartWidth2, restartHeight2);
    
    //restartWidth, restartHeight, restartWidth2, restartHeight2
}
void mousePressRestart(){
  if(mouseX > restartWidth && mouseX < restartWidth2 && mouseY > restartHeight && mouseY < restartHeight2 ){
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
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
    Blue = 0;
    Red = 0;
    loop();
  }
}
