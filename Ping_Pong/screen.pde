PFont startFont ;

String WTBP = "Welcome to broken pong";

void screen(){
  if (gameScreen == 0) {
    initScreen(); 
    }
  
  else if (gameScreen == 1) {
    gameScreen();
  }
}

void initScreen() {
  background (0);
    //textDraw(WTBP, startFont, height, 0, CENTER, CENTER, 0, height*1/2-height*1/20, width-1, height*1/10);
  
}

void startGame() {
  gameScreen=1;
}

void gameScreen() {
  movementDrawBlue();
  movementDrawRed();
  ballDraw();
  GUI();
}
