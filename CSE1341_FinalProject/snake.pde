class snake{

  int snakelen;
  float fat;
  String direction; 
  ArrayList <Float> xposition, yposition;
  
  snake(){
    snakelen = 1;
    fat = 18;
    direction = "left";
    xposition = new ArrayList();
    yposition = new ArrayList();
    xposition.add(random(25,25));
    yposition.add(random(25,25));
  }
  
  void move(){
   for(int i = snakelen-1; i > 0; i = i-1 ){
    xposition.set(i, xposition.get(i - 1));
    yposition.set(i, yposition.get(i - 1));  
   } 
   if(direction == "left"){
     xposition.set(0, xposition.get(0) - fat);
   }
   if(direction == "up"){
     yposition.set(0, yposition.get(0) - fat);
   }
   if(direction == "right"){
     xposition.set(0, xposition.get(0) + fat);
   }
   if(direction == "down"){
     yposition.set(0, yposition.get(0) + fat);
   }
   xposition.set(0, (xposition.get(0) + width) % width);
   yposition.set(0, (yposition.get(0) + height) % height);
   
    if(checkHit() == true){
      snakelen = 1;
      float x = xposition.get(0);
      float y = yposition.get(0);
      xposition.clear();
      yposition.clear();
      xposition.add(x);
      yposition.add(y);
    }
  }
  
  void display(){
    int i=0;
    while(i<snakelen){
      fill(148, 215, 75);
      ellipse(xposition.get(i), yposition.get(i), fat, fat);
      i++;
    }
   
  }
 
  void addLength(){
   if( (xposition.add( xposition.get(snakelen-1) + fat) && yposition.add( yposition.get(snakelen-1) + fat)));
    snakelen++;
  }
  
   boolean checkHit(){
    for(int i = 1; i < snakelen; i++){
     if( dist(xposition.get(0), yposition.get(0), xposition.get(i), yposition.get(i)) < fat){
       return true;
     } 
    } 
    return false;
   } 
}