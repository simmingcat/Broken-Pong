color  Black= #000000 ;
color white = #FFFFFF;
color teal = #00FFFD;
color darkTeal= #48D1CD;
color red = #FF0000;
color darkRed = #D14848;
int gameScreen = 0;
boolean a = true;

void setup(){
  fullScreen();
  screenChecker();
  ballSetUp();
  procssingSetup();
  scoreBoardSetup();
  
}


void draw(){
  background(Black);
 // buildDraw();
  screen();
  
  
}

void gameScreen() {
  //pause();
  movementDrawBlue();
  movementDrawRed();
  ballDraw();
  big();
  GUI();
  TitleDraw();
  scoreBoardDraw();
  
}

void keyPressed(){
  restartKeyPress();
   PauseKeyP();
}
 void mousePressed(){
    if (gameScreen==0) {
    startGame();
  }
  
}
// height is 768, width is 1366
