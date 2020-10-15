
String WTBP = "Welcome to broken pong";
String CTS = "Player 2 (to move up is I, to move down is K)";
String warning = "this might cause headaches and Seizures";

void screen() {
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOverBlue();
    gameOverRed();
  }
}

void initScreen() {
  background (0);
  fill(random(0, 255), random(0, 255), random(0, 255));
  textSize(50);
  textAlign(CENTER, CENTER);
  text(WTBP, 0, 0, 1366, 768);

  textSize(15);
  textAlign(CENTER, BOTTOM);//BOTTOM
  text(warning, width*1/3, height*1/2, width*1/3, 100);
  
  textSize(20);
  textAlign(CENTER, CENTER);
  text(CTS, width*1/3, height*1/2, width*1/3, 100);
  
}

void startGame() {
  gameScreen=1;
  //gameScreen = 2;
}
