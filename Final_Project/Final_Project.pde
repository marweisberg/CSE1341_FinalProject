//Marlo Weisberg
//final project

food newFood;
snake Snake;

void setup(){
  size(1000, 600);
  newFood = new food();
  Snake = new snake();
  
}



void draw(){
  background(255);
  newFood.display();
}