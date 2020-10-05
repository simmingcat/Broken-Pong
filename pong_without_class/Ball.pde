
float  ballSpeedX = 5;
float  ballSpeedY = 5;
float ballStartPositionX, ballX;
float ballStartPositionY, ballY;
float ballSize;
float gravity;

void ballSetUp() {
  ballStartPositionX = width*1/2;
  ballStartPositionY = height*1/2;
  ballX = ballStartPositionX;
  ballY = ballStartPositionY;
  ballSize = 10;
  gravity = 0.5;
}


void big() {  

  if (ballY < 100+ballSize*1/2 + 1 || ballY > height-ballSize*1/2) {
    ballSize = ballSize + 2;
  }

  if (ballX < netWidth+paddleWidth+ballSize*1/2 + 1) {
    ballSize = ballSize + 0.5 ;
    ballSpeedY = ballSpeedY  + 1;
  }

  if (ballX > width-netWidth-paddleWidth-ballSize*1/2 + 1) {
    ballSize = ballSize + 0.5 ;
    ballSpeedY = ballSpeedY + 1;
  }
  
  if (ballSize > 150) {
    ballSize = 150;

    /*
     for(int i = 0; i < Firework.length; i++){
     //       Firework[i].draw();
     Firework[i] .big();
     Firework[i] .step();
     Firework[i] .bounce ();
     
     }
     */
     
  }
  
}
//  ballSize = ballSize + 0.5 ;



void ballDraw() {
  //floor and ceiling bounces
  if (ballY < 100+ballSize*1/2 || ballY > height-ballSize*1/2) {
    ballSpeedY = ballSpeedY * -1;
  }

  if (ballX < netWidth+paddleWidth+ballSize*1/2) {
    if (ballY >= paddleUpBlue && ballY <= paddleUpBlue+paddleHeight) {
      ballSpeedX = ballSpeedX * -1;
    }
  } 


  if (ballX > width-netWidth-paddleWidth-ballSize*1/2) {
    if (ballY >= paddleDownRed && ballY <= paddleDownRed+paddleHeight) {
      ballSpeedX = ballSpeedX * -1;
    }
  }  




  /*
    else {
   noLoop();
   }
   */


  if (ballX > width) {
    ballSpeedX = ballSpeedX * -1;
  }

  // Arithmetic Ball Movement
  ballX = ballX + ballSpeedX;
  ballY += ballSpeedY;
  ballSpeedY = gravity;


  if (a == true) {
    stroke(255);
    strokeWeight(2);
    fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(ballX, ballY, ballSize, ballSize);
    noFill();
  }
}
