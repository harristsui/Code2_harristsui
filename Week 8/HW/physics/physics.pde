import processing.sound.*;

ArrayList<Rect> rects= new ArrayList<Rect>();
ArrayList<Attractor> attract = new ArrayList<Attractor>();
color cc;
SoundFile sound;


void setup() {
 size(1000, 1000); 
 for(int i = 0; i < 50; i++) {
  rects.add(new Rect()); 
 }
 sound = new SoundFile(this, "sound.wav");
 sound.amp(0.5);
}

void draw() {
 background(0); 
 cc = color(random(255), random(255), random(255));
 
 for(Rect r: rects) {
   
   PVector friction = r.vel.copy();
   friction.mult(-1);
   friction.normalize();
   friction.mult(0.05);
   
 for(Attractor a: attract) {
  PVector force = new PVector(a.pos.x, a.pos.y);
  force.sub(r.pos);
  force.normalize();
  force.mult(0.1);
  r.applyForce(force);
  stroke(cc);
  line(r.pos.x, r.pos.y, a.pos.x, a.pos.y);
  a.display();
 }
   
  r.display(); 
  r.update();
  r.count();
 }
}

void mousePressed() {
 attract.add(new Attractor(mouseX, mouseY)); 
}
