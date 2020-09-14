color  Black= #000000 ;
color white = #FFFFFF;

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
