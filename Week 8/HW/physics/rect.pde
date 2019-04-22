class Rect {
 PVector pos;
 PVector vel; 
 PVector acc; 
 float mass = 3; 
 float maxForce;
 float maxSpeed;
 float size = 10;



 Rect() {
    pos = new PVector(random(width), random(height));
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
 }
 
 void display() {
   rectMode(CENTER);
   noStroke();
   fill(255);
   rect(pos.x, pos.y, size, size);
   rectMode(CENTER);
 }

  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    //reSet acc to 0 everytime
 
  if(pos.x + size/2 > width) {
   vel.x *= -1; 
   sound.play();
   finalScore++;
  } else if(pos.x - size/2 < 0) {
     vel.x *= -1;; 
     sound.play();
     finalScore++;
  }
  
  if(pos.y + size/2 > height) {
   vel.y *= -1; 
   finalScore++;
   sound.play();
  }  else if(pos.y - size/2 < 0) {
   vel.y *= -1; 
   finalScore++;
   sound.play();
  }  
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
 
}
