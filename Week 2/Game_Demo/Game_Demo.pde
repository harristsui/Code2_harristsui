

Paddle myPaddle;
Brick myMovingBrick;

void setup() {
  size(500, 500);
  myPaddle = new Paddle(width/2, height/2 + 200, 60, 10);
  myMovingBrick = new Brick(width/2, height/2);
}

void draw() {
  background(255);
  myPaddle.display();
  myPaddle.update();
  myMovingBrick.display();
  myMovingBrick.update();
}
