public class paddle1 extends Shape {

  color colour;
  float netWidth = 40;
  float y = 500;

  paddle1(float x, float y, float w, float h, color c) {
    super(x, y, w, h);
    this. y = netWidth;
    this. colour = c ;
  }
  
  void paddleB1() {
    if (gHex.x < pHex1.netWidth + pHex1. w + gHex.w *1/2) {
      if (gHex.y >= pHex1.y && gHex.y <= pHex1.y +pHex1. h) {
        gHex.xSpeed = gHex.xSpeed * -1;
      }
    }
  }

  void draw() {
    fill(colour);
    rect(x, y, w, h);
  }

  void keyPressed() {

    if (keyCode == UP || key == 'w') {
      y -= 10;
    }

    if (keyCode == DOWN || key == 's') {
      y += 10;
    }
  }
}
