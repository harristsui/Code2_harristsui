int rows = 100; 
int cols = 100; 
int w, h;



void setup() {
  size(700, 700, P3D);
}


void draw() {
  background(0);
  strokeWeight(3);
  stroke(255);
  
  pushMatrix();
  translate(0, height/2);
  
  rotateX(radians(-10));
  for(int i = 0; i < cols; i++) {
   for(int j = 0; j < rows; j++) {
    pushMatrix();
    translate(i * 10, noise(i * 0.04, j * 0.04, frameCount * 0.005) * 200, j * 10);
    point(0, 0, 0);
    popMatrix();
   }
  }
  popMatrix();
  
}
