public ArrayList <Shape> shapes = new ArrayList <Shape>();
game gHex;
paddle1 pHex1;
paddle2 pHex2;


void setup() {
  fullScreen();
  //size(500, 300);
  pHex1 = new paddle1 (width*1/32, height*-1/3, width*1/32, height*1/3, #ADFDFF);
  pHex2 = new paddle2 (width*30/32, height*-1/3, width*1/32, height*1/3, #FFA2A2);
  gHex = new game(width*1/2, height*1/2, width*1/16, width*1/16, #FFFFFF);

  shapes.add(gHex);
  shapes.add(pHex2);
  shapes .add(pHex1);
}

void draw() {
  background(0);
  gameScreen();
println(width, height);
  /*
  */
}

void gameScreen() {
  gHex.draw();
  gHex.step();
  gHex.bounce();

  pHex1. draw();
  pHex1. paddleB1();
  
  pHex2. draw();
  pHex2 .paddleB2();
}

void keyPressed() {
  pHex1. keyPressed();
  pHex2. keyPressed();
}

public abstract class Shape {
  public float x;
  public float y;
  public float w;
  public float h;
  public float xSpeed;
  float ySpeed;

  Shape(float xPar, float yPar, float wPar, float hPar) {
    this. x = xPar;
    this. y = yPar;
    this. w = wPar;
    this. h = hPar;
    this. xSpeed = 5;
    this. ySpeed = 5;
  }
  
 
}
