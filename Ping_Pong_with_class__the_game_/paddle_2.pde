public class paddle2 extends Shape{
  private color colour;
  private float netWidth = 40;
  private float y = 500;
  
  paddle2(float x, float y, float w, float h, color c){
    super(x, y, w, h);
    this. y = width - netWidth - x;
    this. colour = c ;
  }
  
  void paddleB2(){
    if (gHex.x > width-netWidth- w - gHex. w *1/2) {
    if (gHex.y >= y && y <= y + h) {
      gHex.xSpeed = gHex.xSpeed * -1;
    }
  }  
    
  }
  
  void draw(){
    fill(colour);
    rect(x, y, w, h);
  }
  
  void keyPressed() {

  
  if (keyCode == UP || key == 'i') {
    y -= 10;
  }

  if (keyCode == DOWN || key == 'k') {
    y += 10;
  }
}
  
}
