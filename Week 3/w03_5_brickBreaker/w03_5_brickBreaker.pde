Player player;
Ball ball;
Brick[][] bricks = new Brick[10][5];
boolean rightPressed = false;
boolean leftPressed = false;
boolean whichSet;
int myChoice = int(random(0, 2));

void setup() {
  size(900, 600);
  player = new Player();
  ball = new Ball();
  
  if (myChoice == 1) {
   whichSet = true; 
  }  else if (myChoice == 0) {
   whichSet = false; 
  }

    for (int i = 0; i < bricks.length; i++) {
      for (int j = 0; j < bricks[0].length; j++) {
        if (whichSet == true) {
          bricks[i][j] = new Brick1(5 + i * 90, 50 + j * 40, 60, 10);
        } else {
          bricks[i][j] = new Brick2(5 + i * 90, 50 + j * 40, 40, 5);
        }
      }
    }
    
    println(bricks[0].length);
    //bricks[0] relationship with new brick[10][5]; why does this get referred to the row number? 
}

void draw() {
  background(10);
  player.update();
  player.display();

  ball.update();
  ball.display();


  // does it make sense for ball to own this?
  if (ball.pos.x > player.x - player.w/2 && ball.pos.x < player.x + player.w/2 &&
    ball.pos.y > player.y - player.h/2 && ball.pos.y < player.y + player.h/2) {
      
    ball.angle = random(PI, TWO_PI);
    ball.vel = new PVector(cos(ball.angle), sin(ball.angle));
    ball.vel.mult(ball.speed);
    ball.pos.add(ball.vel);
  }

  for (int i = 0; i < bricks.length; i++) {
    for (int j = 0; j < bricks[0].length; j++) {
      if (bricks[i][j].active) {
        bricks[i][j].display();
        if (ball.didCollideWithBrick(bricks[i][j])) {
          bricks[i][j].active = false;
        }
      }
    }
  }
}
