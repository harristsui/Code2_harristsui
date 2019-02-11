class Brick {
  final int brickW = 15;
  final int brickH = 5;
  float brickX;
  float brickY;
  float xSpeed;
  float ySpeed;
  float angle;
  PVector speed;
  
  
  void startAngle(int x) {
    angle = 0;
    if(x == 1) {
      angle = random(30, 50);
    } else if (x == 2) {
      angle = random(130, 150);
    }
  }
  Brick(float brickX, float brickY) {
    this.brickX = brickX;
    this.brickY = brickY; 
    startAngle(int(random(1, 2)));
    xSpeed = cos(radians(angle)) * 6;
    ySpeed = sin(radians(angle)) * 6;
    
  }
  
  void display() {
   fill(0);
   rect(brickX, brickY, brickW, brickH); 
  }
  
  void update() {
    rectMode(CORNER);
    brickX += xSpeed;
    brickY += ySpeed;
    
    if(myMovingBrick.brickX + brickW > width || myMovingBrick.brickX < 0) {
      xSpeed = -xSpeed;     
    } else if (myMovingBrick.brickY + brickH > height || myMovingBrick.brickY < 0) {
      ySpeed = -ySpeed; 
    }
    if(myMovingBrick.brickX > myPaddle.x && 
       myMovingBrick.brickX + brickW < myPaddle.x + myPaddle.w && 
       myMovingBrick.brickY + brickH >= myPaddle.y && 
       myMovingBrick.brickY + brickH <= myPaddle.y + myPaddle.h) {
        xSpeed = -xSpeed;
        ySpeed = -ySpeed;
    }
  }
}
