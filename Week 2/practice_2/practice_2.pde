final int numShapes = 100;

CustomObj[] myObj = new CustomObj[numShapes];

void setup() {
  size(1000, 1000);
  background(255);
  
  for(int i = 0; i < numShapes; i++) {
    myObj[i] = new CustomObj(random(1000), random(1000));   
  }
}


void draw() {
  for(int i = 0; i < numShapes; i++) {
    myObj[i].display();
  }
}



class CustomObj {
  PVector pos;
  float posX, posY;
  float size = random(60, 100);
  color c = color(random(255), random(255), random(255));
  String s = "HI";
  
  CustomObj(float x, float y) {
    pos = new PVector(x, y);  
  }
  
  void display() {
    fill(c);
    noStroke();   
    ellipse(pos.x, pos.y, size, size);
    fill(0);
    text(s, pos.x, pos.y);
    
  }
  
}
