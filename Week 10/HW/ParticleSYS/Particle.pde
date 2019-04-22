class Particle {
  PVector pos;
  PVector vel;
  float size; 
  color c; 
  
  Particle(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-5, 5), random(-5, 5));
    size = 30;
    c = color(random(255), random(255), random(255));
  }
  
  void display() {
    fill(c);
    noStroke();
    ellipse(pos.x, pos.y, size, size);
  }
  
  void update() {
    size--;
    pos.add(vel);
  }
}
