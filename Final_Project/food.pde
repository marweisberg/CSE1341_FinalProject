class food{
 float x;
 float y;
 
 food(){
  x = random(100, width-100);
  y = random(100, height-100);
 }
  void display(){
   rect(x,y,20,20);
   fill(255,0,0);
  }
  void reset(){
   x = random(100, width-100);
   y = random(100, height-100);
  }
}