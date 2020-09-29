
PFont titleFont;
String BP = "Broken Pong";
String CHTL = "Click Here To Leave";


void TitleDraw() {
  if (mousePressed)quitMousePress();
  titleFont = createFont("Italic", 48);

  fill(random(0, 255), random(0, 255), random(0, 255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(BP, titleWidth, titleHeight, titleX, titleY);

  textSize(10);
  text(CHTL, width*1/3, 40, width*1/3, 40);
}

void quitMousePress() {
  if (mouseX>=titleX && mouseX<=titleWidth && mouseY>=titleY*0 && mouseY <= titleHeight) {
    exit();
  }
}
