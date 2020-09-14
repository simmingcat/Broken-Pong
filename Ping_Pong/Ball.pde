int  ballSpeedX = 5;
int  ballSpeedY = 5;
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
    //floor and ceiling bounces
  if (ballY < 100+ballSize*1/2 || ballY > height-ballSize*1/2) {
    ballSpeedY = ballSpeedY * -1;
  }

  if (ballX < netWidth+paddleWidth+ballSize*1/2) {
    if (ballY >= paddleMoveXBlue && ballY <= paddleMoveXBlue+paddleHeight) {
      ballSpeedX = ballSpeedX * -1;
    } else {
      noLoop();
    }
  }
 
  if (ballX > width) {
    ballSpeedX = ballSpeedX * -1;
  }

  // Arithmetic Ball Movement
  ballX = ballX + ballSpeedX;
  ballY = ballY + ballSpeedY;
  
   if(a == true)
  {
  stroke(255);
  strokeWeight(2);
  fill(random(0,255), random(0,255), random(0,255));
  ellipse(ballX, ballY, ballSize, ballSize);
  noFill();
  }
}
