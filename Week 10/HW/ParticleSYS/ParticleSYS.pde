ArrayList<Generator> generators;

void setup() {
  size(800, 800, P3D);
  generators = new ArrayList<Generator>();
  rotateX(radians(-10));
}

void draw() {
  background(0);
  for(int i = 0; i < generators.size(); i++) {
    generators.get(i).addP();
    generators.get(i).updateP();
  }
}

void mousePressed() {
  generators.add(new Generator(mouseX, mouseY));
}

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



class Generator {
  PVector pos;
  PVector vel; 
  ArrayList<Particle> particles;
  
  Generator(float x, float y) {
    pos = new PVector(x, y);
    particles = new ArrayList<Particle>();
    vel = new PVector(0, noise(frameRate) * 2);
  }
  
  void addP() {
    pos.add(vel);
    particles.add(new Particle(pos.x, pos.y));
    for(Particle a : particles){
      if(a.pos.y > 600) {
        vel.y -= 1;
      }
      
      if(a.pos.y < 200) {
        vel.y += 1;
      }
    }
  }
  
  void updateP() {
    for(int i = 0; i < particles.size(); i++) {
      particles.get(i).display();
      particles.get(i).update();
      
      if(particles.get(i).size <= 0) {
        particles.remove(i);
      }
    }  
  }
}
