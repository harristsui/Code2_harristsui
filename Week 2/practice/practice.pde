Rectang[] r = new Rectang[600] ;

void setup() {
  size(600, 600);
  background(255);
  for(int i = 0; i < width; i+=50) {   
    r[i] = new Rectang(i);
  }
}

void draw() {
  for(int i = 0; i < width; i+=50) {
    r[i].display();
  }
}

class Rectang {
  float posX;
  color colors = color(random(255), random(255), random(255));
  float heights = random (100, 500);
  
  
  Rectang(float x) {
    this.posX = x;
  }
  
  void display() {
    noStroke();
    fill(colors);
    rect(posX, 20, 40, heights);
  }
  
  
  
}
