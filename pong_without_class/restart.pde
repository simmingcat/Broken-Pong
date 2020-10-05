String Re = "Restart";

void restartText() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  textAlign(CENTER, CENTER);
  textSize(30);
  text(Re, restartWidth, restartHeight, restartWidth2, restartHeight2);
}

void mousePressRestart() {
  if (mouseX > restartWidth && mouseX < restartWidth2 && mouseY > restartHeight && mouseY < restartHeight2 ) {
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX= 5;
    ballSpeedY = 5;
    Blue = 0;
    Red = 0;
    loop();
  }
}

void restartKeyPress() {
  if (key =='r') {
    ballX = width*1/2;
    ballY = height*1/2;
    ballSize = 10;
    ballSpeedX = 2;
    ballSpeedY = 2;
    Blue = 0;
    Red = 0;
    loop();
  }
}
