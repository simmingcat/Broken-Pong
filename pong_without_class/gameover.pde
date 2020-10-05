



void gameOverBlue() {
  if (Blue > 29 || gameScreen == 3) { 
    background(0);
    stop = true;
    ballX = width*1/2;
    ballY = height*1/2;
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER, CENTER);
    textSize(30);
    text(GOBW, 0, 0, 1366, 768);
    
    textSize(20);
    textAlign(CENTER, CENTER);
    text(CRTC, width*1/3, height*1/2, width*1/3, 100);
    loop();
  }
}

void gameOverRed(){
  if (Red > 29 || gameScreen == 3) { 
  background(0);
    stop = true;
    ballX = width*1/2;
    ballY = height*1/2;
    
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER, CENTER);
    textSize(30);
    text(GORW, 0, 0, 1366, 768);
    
    textSize(20);
    textAlign(CENTER, CENTER);
    text(CRTC, width*1/3, height*1/2, width*1/3, 100);
    loop();
  
  }
}
