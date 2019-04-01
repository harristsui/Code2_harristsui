Button b[] = new Button[2]; 
int bgC = 255;
Table myTable;

void setup() {
  size(600, 600);
  myTable = loadTable("data.csv", "header");
  for(int i = 0; i < myTable.getRowCount(); i++) {
    TableRow row = myTable.getRow(i);
    float x = row.getInt("x");
    float y = row.getInt("y");
    b[i] = new Button(x, y);
  }

}


void draw() {
  background(bgC);
  for(int i = 0; i < myTable.getRowCount(); i++) {
    b[i].display();
    b[i].cases();
  }

}

void keyPressed() {
  for(int i = 0; i < myTable.getRowCount(); i++) {
    b[i].pressed(key);
  }
}

class Button {
  int state;
  PVector pos; 
  float size; 
  color c = color(random(255), random(255), random(255));
  String myText = "Tab to have fun";
  Button(float x, float y) {
    pos = new PVector(x, y);
    size = 100;    
  }
  
  void display() {
   fill(c);
   noStroke();
   ellipse(pos.x, pos.y, size, size);
   text(myText, width/2, 450);
  }

    void cases() {
      switch(state) {
        case 0:
        bgC = (255);
        break;
        
        case 1:
        bgC = (0);
        if(dist(mouseX, mouseY, b[0].pos.x, b[0].pos.y) < size/2 && mousePressed) {
          state = 0;
          myText = "Tab to have fun";
        }
        break;
        
      }
    }
    
    void pressed(char myKey) {
      switch(state) {
        case 0:
        if(myKey == TAB) {
          state = 1;
          myText = "Click left to rescue, NO TIME for RIGHT!!!";
        }
        break;      
      }
    }   
}

  
  //void updateB1() {
  // if(dist(mouseX, mouseY, b1X, b1Y) < size/2 && mousePressed) {
  //   myText = "I am B1";
  //   bgC = (c);
  // } else {
  //   bgC = (255);
  //   myText = "";
  // }
  //}
  
  //void updateB2() {
  //  if(dist(mouseX, mouseY, b2X, b2Y) < size/2 && mousePressed) {
  //    myText = "I am B2";
  //    bgC = (0);
  //   } else {
  //     bgC = (255);
  //     myText = "";
  //   } 
  //}
  //b1.updateB1();
  //b2.updateB2();
