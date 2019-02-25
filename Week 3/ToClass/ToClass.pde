myTrip badTrip;
int tripSpeed = 20;

void setup() {
  size(1000, 1000);
  background(255);
  badTrip = new myTrip();
}


void draw() {
  for(int i = 0; i < tripSpeed; i++) {
    badTrip.display(int(random(width)), int(random(width/2)), int(random(width)), int(random(width/2, width)));
  }
  
}



class myTrip {
  
  myTrip() {       
  }
  
  void display(float x1, float y1, float x2, float y2) {    
    color c = color(random(255), random(255), random(255));
    stroke(c);
    line(x1, y1, x2, y2); 
  }
}
  
  
  
  
