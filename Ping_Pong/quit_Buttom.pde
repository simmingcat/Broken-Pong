color hoveroverRed;

void quitDraw(){
  fill(white);
  rect(titleWidth , titleHeight, titleX, titleY);
}

void quitKeyPress(){
 
}

void quitMousePress(){
 
  if (mouseX>=titleWidth && mouseX<=titleX && mouseY>=titleY*0 && mouseY <= titleHeight) {
    exit();
  }
}
