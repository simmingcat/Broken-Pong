PFont Score;
String Re = "Restart";
String zero =" 0";
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

void BlueScore() {
  if (keyPressed)restartKeyPress();
  if (mousePressed)mousePressRestart();
  BlueScore = Integer.toString(Blue);
  
  fill(teal);
  textAlign(CENTER, CENTER);
  textSize(30);
  text(BlueScore, scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlueY);
  //scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlue
}

void RedScore(){
  if (keyPressed)restartKeyPress();
  if (mousePressed)mousePressRestart();
  RedScore = Integer.toString(Red);
  
  fill(red);
  textAlign(CENTER, CENTER);
  textSize(30);
  text(RedScore, scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY);
  //scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY
  
}

void restartText(){
  fill(random(0,255), random(0,255), random(0,255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(Re, restartWidth, restartHeight, restartWidth2, restartHeight2);
    
}

void bluescore(){
  if(ballX < 10){
    Red += 1;
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX = 2;
    ballSpeedY = 2;
    loop();
  }  
}

void redscore(){
  if(ballX > 1356){
     Blue += 1;
      ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX = 2;
    ballSpeedY = 2;
    loop();
  }  
}


void mousePressRestart(){
  if(mouseX > restartWidth && mouseX < restartWidth2 && mouseY > restartHeight && mouseY < restartHeight2 ){
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
