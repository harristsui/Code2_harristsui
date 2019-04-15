class Attractor{
 PVector pos;
 color c;
 float size = 5;
 
 Attractor(float mouseXXX, float mouseYYY) {
   pos = new PVector(mouseXXX, mouseYYY);
   c = color(random(255), random(255), random(255));
 }
  
  void display() {
    fill(c);
    ellipse(pos.x, pos.y, size, size); 
  }
}
