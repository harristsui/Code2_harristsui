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
    //for(Particle a : particles){
    //  if(a.pos.y > 600) {
    //    vel.y -= 1;
    //  }
      
    //  if(a.pos.y < 200) {
    //    vel.y += 1;
    //  }
    //}
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
