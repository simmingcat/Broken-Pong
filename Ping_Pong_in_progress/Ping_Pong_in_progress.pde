color  Black= #000000 ;
color white = #FFFFFF;
color teal = #00FFFD;
color darkTeal= #48D1CD;
color red = #FF0000;
color darkRed = #D14848;
int gameScreen = 0;
boolean a = true;

fw[] Firework= new fw [15];

void setup(){
  fullScreen();
  screenChecker();
  ballSetUp();
  procssingSetup();
  scoreBoardSetup();
  
  
   for(int i = 0; i < Firework.length; i++){
  Firework[i] = new fw(width, height);
   }
}


void draw(){
  background(Black);
 // buildDraw();
  screen();
  
  
}

void gameScreen() {
for(int i = 0; i < Firework.length; i++){
       Firework[i].draw();
 Firework[i] .big();
  Firework[i] .step();
  Firework[i] .bounce ();
}
  movementDrawBlue();
  movementDrawRed();
  ballDraw();
  big();
  GUI();
  TitleDraw();
  scoreBoardDraw();
  
}

void keyPressed(){
}
 void mousePressed(){
    if (gameScreen==0) {
    startGame();
  }
  
}
// height is 768, width is 1366
