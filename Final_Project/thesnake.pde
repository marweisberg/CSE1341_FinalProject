class thesnake{
 float snakeX;
 float snakeY;
 int []snakesX;
 int []snakesY;
 int moveX;
 int moveY;
 int snakeSize = 10;
 int boardSize = 500;
 
 void drawSnake(){
  for(int i = 0; i<boardSize; i++){
   snakesX = new int[i];
   snakesY = new int[i];
   rect(0,0,0,0);
  }
 }
}