void GUI(){
   if(b == true)
  {
  stroke(random(0,255), random(0,255), random(0,255));
 // frameRate(2);
  fill(white);
// rect(0,0 , 1366 , 100);
 line(0, 80 , 1366 , 80);
 rect(width*1/3, 0, width*1/3 , 80);
 fill(white);
 rect(scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY);
 rect(scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlueY);
 rect(restartWidth, restartHeight, restartWidth2, restartHeight2);
 noFill();
 noStroke();
  }
}
