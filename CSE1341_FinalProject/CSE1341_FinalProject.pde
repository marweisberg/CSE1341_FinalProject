/*
Marlo Weisberg
CSE 1341 Final Project
Some logic was taken from https://www.openprocessing.org/sketch/106774
*/

food newFood;
snake Snake;

void setup(){
  size(1000, 600);
  frameRate(14);
  newFood = new food();
  Snake = new snake();
}

void draw(){
  background(210, 251, 242);
  Snake.move();
  Snake.display();
  newFood.display();
  if( dist(newFood.x,newFood.y, Snake.xposition.get(0), Snake.yposition.get(0)) < Snake.fat ){
    newFood.reset();
    Snake.addLength();
  } 
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      Snake.direction = "left";
    }
    if(keyCode == RIGHT){
      Snake.direction = "right";
    }
    if(keyCode == UP){
      Snake.direction = "up";
    }
    if(keyCode == DOWN){
      Snake.direction = "down";
    }
  }
}