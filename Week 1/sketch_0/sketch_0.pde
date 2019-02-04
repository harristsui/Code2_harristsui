ArrayList<Circles> myList = new ArrayList<Circles>();
boolean on1 = false; 
boolean on2 = false;
boolean on3 = false;
boolean on4 = false;




void setup() {
  size(800, 800);
  rectMode(CENTER);
  frameRate(30);
  myList.add(new Circles (100, 200));
  myList.add(new Circles (300, 200));
  myList.add(new Circles (500, 200));
  myList.add(new Circles (700, 200));
  textSize(80);
  textMode(CORNER);
}

void draw() {
  background(255);
  if (on1 == true) {
    fill(255);
  } else {
    fill (0); 
  }
  myList.get(0).display();
  if (on2 == true) {
    fill(255);
  } else {
    fill (0);
  }
  myList.get(1).display();
  if (on3 == true) {
    fill(255);
  } else {
    fill (0);
  }
  myList.get(2).display();
  if (on4 == true) {
    fill(255);
  } else {
    fill (0);
  }
  myList.get(3).display();
}

void mousePressed() {
  if (dist(mouseX, mouseY, 100, 200) < 150 / 2) {
   on1 = true;
   text("Q", 400, 600);
 }
  if (dist(mouseX, mouseY, 300, 200) < 150 / 2) {
   on2 = true;
   text("W", 400, 600);
 }
  if (dist(mouseX, mouseY, 500, 200) < 150 / 2) {
   on3 = true;
   text("E", 400, 600);
 }
  if (dist(mouseX, mouseY, 700, 200) < 150 / 2) {
   on4 = true;
   text("R", 400, 600);
 }
}

void mouseReleased() {
  on1 = false;
  on2 = false;
  on3 = false;
  on4 = false;
}

class Circles { 
  float radius = 150; 
  float x, y;
  Circles (float x, float y) { 
    this.x = x;
    this.y = y;
  }
  
  void display() {
    ellipse(x, y, radius, radius);
  }
  
}
