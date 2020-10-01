public abstract class All {
  PFont Score;
  PFont titleFont;


  int ballSpeedX = 2;
  int ballSpeedY = 2;
  int gameScreen = 0;
  int paddleUpBlue = 500 ;
  int paddleUpBlueN;
  int paddleDownRed = 500;
  int paddleDownRedN;
  int Blue;
  int Red;


  float netWidth;
  float paddleWidth;
  float paddleHeight;
  float paddleMoveXBlue;
  float paddleMoveXRed;
  float paddleMoveYBlue;
  float paddleMoveYRed;
  float restartWidth;
  float restartHeight;
  float restartWidth2;
  float restartHeight2;
  float scoreRedWidth;
  float scoreRedHeight;
  float scoreRedX;
  float scoreRedY;
  float scoreBlueWidth;
  float scoreBlueHeight;
  float scoreBlueX;
  float scoreBlueY;
  float randomWidth;
  float randomHeight;
  float randomX;
  float randomY;
  float hardWidth;
  float hardHeight;
  float hardX;
  float hardY;
  float titleWidth;
  float titleHeight;
  float titleX;
  float titleY;
  float easyWidth;
  float easyHeight;
  float easyX;
  float easyY;
  float mediumWidth ;
  float mediumHeight;
  float mediumX;
  float mediumY;
  float ballStartPositionX, ballX;
  float ballStartPositionY, ballY;
  float ballSize;
  float gravity;


  String Re = "Restart";
  String zero =" 0";
  String WTBP = "Welcome to broken pong";
  String CTS = "Click To Start";
  String GO = "GameOver <3";
  String BP = "Broken Pong";
  String CHTL = "Click Here To Leave";
  String M = "GameMode";
  String BlueScore;
  String RedScore;


  color  Black= #000000 ;
  color white = #FFFFFF;
  color teal = #00FFFD;
  color darkTeal= #48D1CD;
  color red = #FF0000;
  color darkRed = #D14848;


  boolean a = true;
  Boolean regame = false;
  Boolean stop = false;

  //class setup
  void PS() {
    netWidth = 40;
    paddleWidth = width*1/76;
    paddleHeight = height*1/5;
    paddleMoveXBlue = netWidth;
    paddleMoveXRed = width - netWidth - paddleWidth;
    paddleMoveYBlue = height*1/2-paddleHeight*1/3;
    paddleMoveYRed = height*1/2-paddleHeight*1/3;
    restartWidth = 80 ;
    restartHeight= 0; 
    restartWidth2 = 374;
    restartHeight2 = 80;
    randomWidth = width*2/3;
    randomHeight = 0;
    randomX = 374;
    randomY = 80;
    scoreRedWidth = 1286;
    scoreRedHeight = 0;
    scoreRedX = 1366;
    scoreRedY = 80;
    scoreBlueWidth = 0;
    scoreBlueHeight = 0;
    scoreBlueX = 80;
    scoreBlueY = 80;
    hardWidth = 0;
    hardHeight = 80;
    hardX = width*1/3;
    hardY = 20;
    easyWidth = width*1/3 ;
    easyHeight = 80;
    easyX = width*1/3;
    easyY = 20;
    mediumWidth = width*2/3;
    mediumHeight = 80;
    mediumX = width*1/3;
    mediumY = 20;
    titleWidth = width*1/3;
    titleHeight = 0;
    titleX = width*1/3;
    titleY = 80;
  }
  void scoreBoardSetup() {
    Blue = 0;
    Red = 0;
  }
  void ballSetUp() {
    ballStartPositionX = width*1/2;
    ballStartPositionY = height*1/2;
    ballX = ballStartPositionX;
    ballY = ballStartPositionY;
    ballSize = 10;
    gravity = 0.5;
  }

  void initScreen() {
    background (0);
    fill(random(0, 255), random(0, 255), random(0, 255));
    textSize(50);
    textAlign(CENTER, CENTER);
    text(WTBP, 0, 0, 1366, 768);

    textSize(20);
    textAlign(CENTER, CENTER);
    text(CTS, width*1/3, height*1/2, width*1/3, 100);
  }


  //class draw
  void gameScreen() {
    //pause();
    movementDrawBlue();
    movementDrawRed();
    ballDraw();
    big();
    GUI();
    TitleDraw();
    RedScore();
    BlueScore();
    moveBoth();
    mode();
    restartText();
    bluescore();
    redscore();
    // gameOver();
    // speedUpRed();
    // println(ballSize);
  }

  void movementDrawBlue() {
    if (keyPressed == true) {
      paddleUpBlueN = paddleUpBlue;
      if (keyPressed)movement();
      stroke(teal);
      fill(darkTeal);
      rect(paddleMoveXBlue, paddleUpBlue, paddleWidth, paddleHeight, 5);
      noFill();
      noStroke();
    }
  }

  void movementDrawRed() {
    if (keyPressed == true) {
      paddleDownRedN = paddleDownRed;
      if (keyPressed)movement();
      stroke(red);
      fill(darkRed);
      rect(paddleMoveXRed, paddleDownRed, paddleWidth, paddleHeight, 5);
      noFill();
      noStroke();
    }
  }
  void GUI() {
    if (mousePressed)quitMousePress();
    fill(white);
    stroke(random(0, 255), random(0, 255), random(0, 255));
    // rect(0,0 , 1366 , 100);
    line(0, 80, 1366, 80);
    rect(titleWidth, titleHeight, titleX, titleY);
    rect(scoreBlueWidth, scoreBlueHeight, scoreBlueX, scoreBlueY);
    rect(scoreRedWidth, scoreRedHeight, scoreRedX, scoreRedY);
    rect(randomWidth, randomHeight, randomX, randomY);
    rect(restartWidth, restartHeight, restartWidth2, restartHeight2);
    rect(hardWidth, hardHeight, hardX, hardY);
    rect(easyWidth, easyHeight, easyX, easyY);
    rect(mediumWidth, mediumHeight, mediumX, mediumY);
    noFill();
    noStroke();
  }

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


    if (a == true) {
      stroke(255);
      strokeWeight(2);
      fill(random(0, 255), random(0, 255), random(0, 255));
      ellipse(ballX, ballY, ballSize, ballSize);
      noFill();
    }
  }


  // class text
  void mode() {
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER, CENTER);
    textSize(30);
    text(M, randomWidth, randomHeight, randomX, randomY);
  }

  void BlueScore() {
    if (keyPressed)restartKeyPress();
    if (keyPressed)unstuck();
    if (mousePressed)mousePressRestart();
    BlueScore = Integer.toString(Blue);

    fill(teal);
    textAlign(CENTER, CENTER);
    textSize(30);
    text(BlueScore, scoreBlueWidth, scoreBlueHeight, scoreBlueX, scoreBlueY);
    //scoreBlueWidth, scoreBlueHeight, scoreBlueX,  scoreBlue
  }

  void RedScore() {
    if (keyPressed)restartKeyPress();
    if (keyPressed)unstuck();
    if (mousePressed)mousePressRestart();
    RedScore = Integer.toString(Red);

    fill(red);
    textAlign(CENTER, CENTER);
    textSize(30);
    text(RedScore, scoreRedWidth, scoreRedHeight, scoreRedX, scoreRedY);
    //scoreRedWidth, scoreRedHeight, scoreRedX,  scoreRedY
  }

  void restartText() {
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER, CENTER);
    textSize(30);
    text(Re, restartWidth, restartHeight, restartWidth2, restartHeight2);
  }

  void TitleDraw() {
    if (mousePressed)quitMousePress();
    titleFont = createFont("Italic", 48);

    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER, CENTER);
    textSize(30);
    text(BP, titleWidth, titleHeight, titleX, titleY);

    textSize(10);
    text(CHTL, width*1/3, 40, width*1/3, 40);
  }

  void gameOver() {
    if (Blue > 33 || gameScreen == 3) { 
      fill(random(0, 255), random(0, 255), random(0, 255));
      textAlign(CENTER, CENTER);
      textSize(30);
      text(GO, 0, 100, 1366, 768);
    }
  }

  //end text

  //class system
  void bluescore() {
    if (ballX < 10) {
      Red += 1;
      ballX = width*1/2;
      ballY = height*1/2;
      ballSize = 10;
      ballSpeedX = 2;
      ballSpeedY = 2;
      loop();
    }
  }

  void redscore() {
    if (ballX > 1356) {
      Blue += 1;
      ballX = width*1/2;
      ballY = height*1/2;
      ballSize = 10;
      ballSpeedX = 2;
      ballSpeedY = 2;
      loop();
    }
  }

  void startGame() {
    gameScreen=1;
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
    }
  }
  void moveBoth() {
    if (keyPressed == true) {
      movement();
    }
  }

  //mouse pressed
  void screen() {
    if (gameScreen == 0) {
      initScreen();
    } else if (gameScreen == 1) {
      gameScreen();
    } else if (gameScreen == 2) {
      gameOver();
    }
  }
  void quitMousePress() {
    if (mouseX >=titleX && mouseX<=titleWidth && mouseY>=titleY*0 && mouseY <= titleHeight) {
      exit();
    }
  }

  void mousePressRestart() {
    if (mouseX > restartWidth && mouseX < restartWidth2 && mouseY > restartHeight && mouseY < restartHeight2 ) {
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
  //class mousePressed end


  //class keyPressed
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
  }//restartKeyPress end

  void unstuck() {
    if (key =='u') {
      ballX = width*1/2;
      ballY = height*1/2;

      loop();
    }
  }//unstuck end

  void movement() {
    if (keyCode == UP || key == 'i') {
      paddleDownRed -= 1;
    }

    if (keyCode == DOWN || key == 'k') {
      paddleDownRed += 1;
    }

    if (keyCode == UP || key == 'w') {
      paddleUpBlue += -1;
    }

    if (keyCode == DOWN || key == 's') {
      paddleUpBlue += 1;
    }
  }//paddle movement end
  //class keyPressed end
}//class end
