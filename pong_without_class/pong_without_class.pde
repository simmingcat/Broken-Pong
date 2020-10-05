//fw[] Firework= new fw [100];

public color  Black= #000000 ;
public color white = #FFFFFF;
public color teal = #00FFFD;
public color darkTeal= #48D1CD;
public color red = #FF0000;
public color darkRed = #D14848;
//String GO = "GameOver <3";
public int gameScreen = 0;
public boolean a = true;

void setup() {
  fullScreen();
  screenChecker();
  ballSetUp();
  procssingSetup();
  scoreBoardSetup();
}


void draw() {
  background(Black);
  // buildDraw();
  screen();
}

void gameScreen() {
  //pause();
   GUI();
   mode();
  movementDrawBlue();
  movementDrawRed();
  ballDraw();
  big();
  TitleDraw();
  RedScore();
  BlueScore();
  hardmode();
  MediumMode();
  EasyMode();
 // moveBothBlue();
 // moveBothRed();
  restartText();
  bluescore();
  redscore();
  gameOverBlue();
  gameOverRed();
  modeKey();
  // speedUpRed();
  println(ballSize);
}

void keyPressed() {
  restartKeyPress();
  PauseKeyP();
  modeKey();
}
void mousePressed() {
  if (gameScreen==0) {
    startGame();
  }
}
// height is 768, width is 1366
