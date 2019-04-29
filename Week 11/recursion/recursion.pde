final int SIZE = 20;

void setup() {
  size(1000, 1000);
  background(0);
}


void draw() {
  translate(width/2, height - SIZE/2 + 467);
  drawBricks(500);
}

void drawBricks(float incr) {
 rectMode(CENTER);
 fill(255);
 noStroke();
 ellipse(0, -incr, SIZE, SIZE);
 translate(0, -incr);
 
 if(incr > 5) {
   
   pushMatrix();

   rotate(PI/8);
   drawBricks(incr/1.5); 
   popMatrix();
   
   pushMatrix();
   rotate(-PI/8);
   drawBricks(incr/1.5); 
   popMatrix();
 }
}
