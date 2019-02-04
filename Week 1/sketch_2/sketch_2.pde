float yPos;
float xPos = width/2;

void setup() {
  size(1000, 1000);
  rectMode(CENTER);
}


void draw() {
  background(0);
  yPos = 0.06;
  ellipse(xPos, map(sin(yPos), -1, 1, 0, height), 200, 200);
}
