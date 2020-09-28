
class fw{
  //var
 private float x ; 
 private float y ;
 private float dia;
 private color colour ; //#FFB7C5
  
 private float xS; // X speed
 private float yS; // Y speed
  
 private float gravity;
  
  //constuck
  fw (float width , float height){
    this. x = mouseX;//mouseX
    this. y = mouseY;//mouseY
    this. colour = color(random(255), random(255), random(255));
    this. dia = random(width*1/150, width*1/50);
    this. xS = random (-5, 3);
    this. yS = random (-5, 3);
    gravity = 0.3;
    //9.8
  }
  
  void step(){
    x += xS;
    y += yS;
    yS += gravity;
    
    if (yS < width){
    yS -= gravity - 0.1;
    }
  }//end step
  
 void big(){
    if(y - dia < 0 || y + dia > height){
    dia = dia + 0.5 ;
  }
  if (dia > 150){
   dia = 150;
  }
 }
  
  void bounce (){
    
    if (x - dia*1/2 < 0 || x + dia*1/2 > width ) {
    xS *= -1;
  }
  

  if (y - dia*1/2 < 0 || y + dia*1/2 > height ) {
   yS *= -1;
  } 
  }
 
  
  //method
  void draw(){
    fill(colour);
    ellipse(x, y, dia, dia);
    fill(0);
  }
  
  
}
