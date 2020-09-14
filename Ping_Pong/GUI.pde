void GUI(){
   if(b == true)
  {
  stroke(random(0,255), random(0,255), random(0,255));
 // frameRate(2);
  fill(white);
// rect(0,0 , 1366 , 100);
// line(0, 80 , 1366 , 80);
 
 rect(titleWidth , titleHeight, titleX, titleY);
 
 rect(scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY);
 rect(scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlueY);
 
 rect(randomWidth,  randomHeight, randomX, randomY);
 rect(restartWidth, restartHeight, restartWidth2, restartHeight2);
 
 rect(hardWidth, hardHeight, hardX, hardY);
 rect(easyWidth, easyHeight, easyX, easyY);
 rect(mediumWidth, mediumHeight, mediumX, mediumY);
 
 noFill();
 noStroke();
  }
}
