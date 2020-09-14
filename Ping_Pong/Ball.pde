int  ballSpeedX = 1;
int  ballSpeedY = 1;
float ballStartPositionX, ballX;
float ballStartPositionY, ballY;
float ballSize;
PVector location;

void ballSetUp() {
  ballStartPositionX = width*1/2;
  ballStartPositionY = height*1/2;
  ballX = ballStartPositionX;
  ballY = ballStartPositionY;
  ballSize = 10;
}

void ballDraw() {
  stroke(255);
  strokeWeight(2);
  fill(127);
  ellipse(ballStartPositionX, ballStartPositionY, ballSize, ballSize);
  noFill();
}
