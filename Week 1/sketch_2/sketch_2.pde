float yPos;

void setup() {
  size(1000, 1000);
  rectMode(CENTER);
}


void draw() {
  background(0);
  yPos += 0.06;
  ellipse(width/2, map(sin(yPos), -1, 1, 0, height), 200, 200);

}
