int  ballSpeedX = 2;
int  ballSpeedY = 2;
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

 void big(){  
   
    if (ballY < 100+ballSize*1/2 + 1 || ballY > height-ballSize*1/2) {
    ballSize = ballSize + 0.5 ;
    
  }
   
    if(ballX < netWidth+paddleWidth+ballSize*1/2 + 1){
      if(ballY >= paddleUpBlue && ballY <= paddleUpBlue+paddleHeight){
    ballSize = ballSize + 0.5 ;
    ballSpeedY = ballSpeedX + 1;
   
    }
    }
    
   if (ballX > width-netWidth-paddleWidth-ballSize*1/2 + 1) {
     if (ballY >= paddleDownRed && ballY <= paddleDownRed+paddleHeight) {
    ballSize = ballSize + 0.5 ;
    ballSpeedY = ballSpeedX + 1;

     }
   }
   if(ballSize > 150){
     ballSize -= 0.5;
   }
   
   //  ballSize = ballSize + 0.5 ;
   
 }

void ballDraw() {
    //floor and ceiling bounces
  if (ballY < 100+ballSize*1/2 || ballY > height-ballSize*1/2) {
    ballSpeedY = ballSpeedY * -1;
  }

  if (ballX < netWidth+paddleWidth+ballSize*1/2) {
    if (ballY >= paddleUpBlue && ballY <= paddleUpBlue+paddleHeight) {
       ballSpeedX = ballSpeedX * -1;
    } else {
     Blue += 1;
      stop = true;
    }
        } 
    
        
          if (ballX > width-netWidth-paddleWidth-ballSize*1/2) {
    if (ballY >= paddleDownRed && ballY <= paddleDownRed+paddleHeight) {
      ballSpeedX = ballSpeedX * -1;
      } else {
      Red += 1;
      stop = true;
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
