Animal []myShape = new Animal[2];


void setup() {
  size(1000, 1000);
  background(255);
  
  for(int i = 0; i < myShape.length; i++) {
    myShape[0] = new Dick(width/4, height/2, 80, 30);
    myShape[1] = new Boobs(width * 3/4, height/2, 20, 80);
  }
  
}


void draw() {
  for(int i = 0; i < 2; i++) {
    myShape[i].display();
  }
 
}

class Animal {
  PVector pos;
  
  Animal(float x, float y) {
    pos = new PVector(x, y);
  }  
  void whoRU(String x) {
    println("my name is" + x);
  }
  
  void display() {};

}

class Dick extends Animal {
  float sWidth = 30; 
  float sHeight = 5;
  Dick(float x, float y, float w, float h ) {
    super(x, y);
    this.sWidth = w;
    this.sHeight = h;
  }
  
  void display() {
    rectMode(CORNER);
    rect(pos.x, pos.y, sWidth, sHeight);
    ellipse(pos.x + 10, pos.y - 10, 20, 20);
    ellipse(pos.x + 10, pos.y + sHeight + 10, 20, 20);
  }
}


class Boobs extends Animal {
  float sN;
  float sC;
  Boobs(float x, float y, float n, float c) {
      super(x, y);
      this.sN = n;
      this.sC = c;
  }
  
  void display() {
    fill(255);
    ellipse(pos.x, pos.y, sC, sC);
    fill(0);
    ellipse(super.pos.x, super.pos.y, sN, sN);  
  }
   
}
