private String M = "GameMode";
int Light = 0;

void mode() {
  if (mousePressed)modeMouseP();
  if (keyPressed)modeMouseP();
  fill(random(0, 255), random(0, 255), random(0, 255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(M, randomWidth, randomHeight, randomX, randomY);
}

void modeKey() {
  if (key == 'c') {
    
  }
}



void modeMouseP() {
  if (Light == 255) {       
   if (mouseX > randomWidth && mouseX < randomX && mouseY > randomHeight && mouseY < randomY) {
    Light = 0;
  }
  
  background(Light);
  }else {
    Light = 255;
  }
}
