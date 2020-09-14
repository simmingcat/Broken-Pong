color  Black= #000000 ;
color white = #FFFFFF;
color teal = #00FFFD;
color darkTeal= #48D1CD;
color red = #FF0000;
color darkRed = #D14848;
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
  movementDrawBlue();
  movementDrawRed();
  ballDraw();
  GUI();
  
}

void keyPressed(){
  
  
}

void mousePressed(){
  
  
  
}
// height is 768, width is 1366
