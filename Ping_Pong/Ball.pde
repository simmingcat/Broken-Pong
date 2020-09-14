int  ballSpeedX = 1;
 int  ballSpeedY = 1;
 float ballStartPositionX;
float ballStartPositionY;
float ballSize;
PVector location;

void ballSetUp(){
    ballStartPositionX = width*1/2;
  ballStartPositionY = height*1/2;
  ballSize = 10;
  
}

void ballDraw(){
    stroke(255);
  strokeWeight(2);
  fill(127);
  ellipse(ballStartPositionX, ballStartPositionY, ballSpeedX , ballSpeedY);
  noFill();
}
