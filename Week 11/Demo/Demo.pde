Circle[] circles = new Circle[30];

void setup() {
  size(1000, 1000);
  for(int i = 0; i < circles.length; i++) {
    circles[i] = new Circle();
  }
}


void draw() {
  background(255);
  
  for(int i = 0; i < circles.length; i++) {
    circles[i].display();
    circles[i].update();
  }
}
class Circle {
  PVector pos;
  PVector vel;
  PVector acc;
  float mass;
  float size;
  
  Circle() {
    pos = new PVector(random(width), random(height));
    vel = new PVector(random(1), random(1));
    acc = new PVector(random(-1, 1), random(-1, 1));
    mass = random(1, 5);
    size = 20;
  }
  
  void display() {
    fill(0);
    ellipse(pos.x, pos.y, size, size);
  }
  
  void update() {
    vel.add(acc);
    pos.add(vel);
    
    if(pos.x + size/2 > width || pos.x + size/2 < 0) {
      vel.x *= -1;
    }
    
    if(pos.y + size/2 > height || pos.y + size/2 < 0) {
      vel.y *= -1;
    }

  }
  
  
  
}
