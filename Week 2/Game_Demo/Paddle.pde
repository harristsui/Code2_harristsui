class Paddle {
  float x, y, w, h;
  float xVel = 5;

  Paddle (float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    rectMode(CORNER);
  }

  void display() {
    fill(0);
    rect(x, y, w, h);
  }

  void update() {
    if (rightPressed == true) {
      x+=xVel;
    }
    if (leftPressed == true) {
      x-=xVel;
    }
  }
}

boolean rightPressed = false;
boolean leftPressed = false;

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      rightPressed = true;
    }
    if (keyCode == LEFT) {
      leftPressed = true;
    }
  }
}

void keyReleased() {
  rightPressed= false;
  leftPressed= false;
}
