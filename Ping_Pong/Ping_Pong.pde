color  Black= #000000 ;
color white = #FFFFFF;
color teal = #00FFFD;
color darkTeal= #48D1CD;
color red = #FF0000;
color darkRed = #D14848;
int gameScreen = 0;
boolean a = true;
boolean b = true;

void setup(){
  fullScreen();
  screenChecker();
  ballSetUp();
  procssingSetup();
  
}

void draw(){
  background(Black);
 // buildDraw();
  screen();
  
  
}

void buildDraw(){
  movementDrawRed();
  movementDrawBlue();
  ballDraw();
  GUI();
  quitDraw();
}

void keyPressed(){
  quitKeyPress();
  
}


public void mousePressed(){
  quitMousePress();
  RestartMousePress();
    if (gameScreen==0) {
    startGame();
  }
  
}
// height is 768, width is 1366
