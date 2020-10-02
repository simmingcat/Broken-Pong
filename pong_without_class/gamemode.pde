String M = "GameMode";

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
    background(255);
    fill(0);
    rect(titleWidth, titleHeight, titleX, titleY);

    rect(scoreBlueWidth, scoreBlueHeight, scoreBlueX, scoreBlueY);
    rect(scoreRedWidth, scoreRedHeight, scoreRedX, scoreRedY);

    rect(randomWidth, randomHeight, randomX, randomY);
    rect(restartWidth, restartHeight, restartWidth2, restartHeight2);

    rect(hardWidth, hardHeight, hardX, hardY);
    rect(easyWidth, easyHeight, easyX, easyY);
    rect(mediumWidth, mediumHeight, mediumX, mediumY);
  }
}



void modeMouseP() {
  if (mouseX > randomWidth && mouseX < randomX && mouseY > randomHeight && mouseY < randomY) {
    background(255);
    fill(0);
    rect(titleWidth, titleHeight, titleX, titleY);

    rect(scoreBlueWidth, scoreBlueHeight, scoreBlueX, scoreBlueY);
    rect(scoreRedWidth, scoreRedHeight, scoreRedX, scoreRedY);

    rect(randomWidth, randomHeight, randomX, randomY);
    rect(restartWidth, restartHeight, restartWidth2, restartHeight2);

    rect(hardWidth, hardHeight, hardX, hardY);
    rect(easyWidth, easyHeight, easyX, easyY);
    rect(mediumWidth, mediumHeight, mediumX, mediumY);
  }
}
