Ball myBall;

void setup() {
  size(1000, 1000);
  myBall = new Ball();
  println("TAB AND SPACE");
}


void draw() {
  background(0);
  myBall.display();
  myBall.bounce();
  
}

void keyPressed() {
   myBall.pressed(key); 
  
}




class Ball {
 int state;
 int grav;
 PVector size;
 PVector vel;
 PVector pos;
  
  Ball() {
   size = new PVector(100, 100);
   vel = new PVector(0, 0);
   pos = new PVector(width/2, height/2 + 100);
   grav = 1;
  }
  
  void display() {
    switch (state) {
     case 0:
       fill(255);
       break;
     case 1:
       fill(66, 241, 244);
       break;
     case 2:
       fill(116, 244, 66);
       break;
    }
    noStroke();
    ellipse(pos.x, pos.y, size.x, size.y); 
  }
    
  void bounce() {
   switch(state) {
    case 0:
      vel.y = 0;
      vel.x = 0;
      break;
      
    case 1:
      pos.add(vel);
      vel.y += grav;
      if(pos.y == height/2 + 100) {
       state = 0;
       pos.y = height/2 + 100;
      }
      break;
      
    case 2:
      pos.add(vel);
      vel.x -= grav;
      if(pos.x == width/2) {
       state = 0;
       pos.x = width/2;
      }
      break;
   }
  }
  
  void pressed(char myKey) {
    switch(state) {  
      case 0:
        if(myKey == ' ') {
          state = 1;
          vel.y = -30;
        }
        if(myKey == TAB) {
         state = 2;
         vel.x = 30;
        }
        break;
    }
  }
}
