// bryan ma for code 2 sp 19 A
String[] data;
Shapes myRect; 
Shapes cir;
Shapes myArc;

void setup() {
  background(255);
  data = loadStrings("dataPos.txt");
  rectMode(CENTER);
  size(1000, 1000);
  String[] splitData = data[0].split(",");
  String[] splitDataSiz = data[1].split(",");
  for(int i = 0; i < 3; i++) {
    myRect = new Rectangle(50 + int(splitData[i]) * 100, width/2, int(splitDataSiz[i]), int(splitDataSiz[i])); 
    myRect.display();
  }
  cir = new Circle(50 + int(splitData[3]) * 100, width/2, int(splitDataSiz[3]), int(splitDataSiz[3]));
  cir.display();
  for(int i = 3; i < splitData.length; i++) {
    myArc = new Arc(50 + int(splitData[i]) * 100, width/2, int(splitDataSiz[i]), int(splitDataSiz[i]), 0, PI+QUARTER_PI, PIE);
  }
  //arc didnt show up...?
}

void draw() {
  
}

class Shapes {
  PVector pos;
  PVector size;
  
  Shapes(float x, float y, float w, float h) {
    pos = new PVector(x, y);
    size = new PVector(w, h);
  }
  
  void display(){}
   
}

class Rectangle extends Shapes {
  color r = color(random(255), random(255), random(255)); 
  Rectangle(float x, float y, float w, float h) {  
    super(x, y, w, h);
  }
  
  void display(){
    noStroke();
    fill(r);
    rect(pos.x, pos.y, size.x, size.y);
  }
}

class Circle extends Shapes {
  color r = color(random(255), random(255), random(255));
  Circle(float x, float y, float w, float h) {
   super(x, y, w, h);    
  }
  
  void display() {
   fill(r);
   ellipse(pos.x, pos.y, size.x, size.y); 
  }
}


class Arc extends Shapes{
  float start;
  float stop;
  int mode;
  Arc(float x, float y, float w, float h, float start, float stop, int mode) {
  super(x, y, w, h); 
  this.start = start;
  this.stop = stop;
  this.mode = mode;
 }
 void display() {
   fill(0);
  arc(pos.x, pos.y, size.x, size.y, start, stop, mode); 
 }
}
