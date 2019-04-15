class Rect {
 PVector pos;
 PVector vel; 
 PVector acc; 
 float mass = 3; 
 float maxForce;
 float maxSpeed;
 float size = 10;
 int counts;


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
 }

  void update() {
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    //reSet acc to 0 everytime
  
  if(pos.x + size/2 > width) {
   vel.x *= -1; 
   sound.play();
   counts++;
  } else if(pos.x - size/2 < 0) {
     vel.x *= -1;; 
     sound.play();
     counts++;
  }
  
  if(pos.y + size/2 > height) {
   vel.y *= -1; 
   sound.play();
   counts++;
  }  else if(pos.y - size/2 < 0) {
   vel.y *= -1; 
   sound.play();
   counts++;
  }  
  }
  
  void count() {
    textSize(30);
    text(counts, 800, 50); 
    println(counts);
    //the counts get reset to 0 everyframe, how shall I fix this? Thanks. 
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acc.add(f);
  }
 
}
