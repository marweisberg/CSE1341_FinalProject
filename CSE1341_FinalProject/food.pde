class food{
  float x;
  float y;
  
  food(){
    x = random(100, width - 100);
    y = random(100, height - 100);
  }

 void display(){  
   fill(205,90,115);
   ellipse(x, y,20,20);
 }
 
 void reset(){
    x = random(100, width - 100);
    y = random(100, height - 100);
 }   
}