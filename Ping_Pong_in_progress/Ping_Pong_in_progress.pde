//fw[] Firework= new fw [100];
All myGame = new All();
//PS pro = new PS();

void setup() {
  fullScreen();
  //screenChecker();
  myGame. PS();
  myGame.ballSetUp();
  myGame. scoreBoardSetup();
}


void draw() {
  background(0);
  screen();
  // buildDraw();
  //myGame. screen();
  myGame. gameScreen();
 // myGame. initScreen();
 /*
  myGame. movementDrawBlue();
  myGame. movementDrawRed();
  myGame. ballDraw();
  myGame. big();
  myGame. GUI();
  myGame. TitleDraw();
  myGame. RedScore();
  myGame. BlueScore();
  myGame. moveBoth();
  myGame. mode();
  myGame. restartText();
  myGame. bluescore();
  myGame. redscore();
  */
}

  void screen() {
    if (myGame. gameScreen == 0) {
      myGame. initScreen();
    } else if (myGame. gameScreen == 1) {
     myGame. gameScreen();
      
    } else if (myGame. gameScreen == 2) {
      myGame. gameOver();
    }
   
  }
void keyPressed() {
  myGame. restartKeyPress();
  myGame. movement();
}
void mousePressed() {
  if (myGame.gameScreen==0) {   
    myGame. startGame();
     
  }
}
// height is 768, width is 1366
