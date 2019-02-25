class Brick {
  float x;
  float y;
  float w;
  float h;
  boolean active;

  
  Brick(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    active = true;
  }

  void display() {
    rectMode(CORNER);
    stroke(255);
    fill(0);
    rect(x, y, w, h);
  }
}

class Brick1 extends Brick { 
  Brick1(float a, float b, float c, float d) {
    super(a,b,c,d);
  }
}


class Brick2 extends Brick { 
  Brick2(float a, float b, float c, float d) {
    super(a,b,c,d);
  }
}
