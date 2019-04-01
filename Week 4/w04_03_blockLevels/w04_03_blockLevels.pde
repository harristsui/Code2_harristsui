Block blocks[][] = new Block[12][12];
Table data;
int num;

void setup() {
  size(600, 600);
  data = loadTable("data.csv");
  for(int i = 0; i < data.getColumnCount(); i++) {
   for(int j = 0; j < data.getRowCount(); j++) {
     TableRow row = data.getRow(j);
     num = row.getInt(i);
     if(num == 0) {
       blocks[i][j] = new LightColor(i, j);
     } else {
       blocks[i][j] = new DarkColor(i, j);
     }
   }
  }

}


void draw() {
  background(255);
  for (int i = 0; i < data.getColumnCount(); i++) {
    for (int j = 0; j < data.getRowCount(); j++) {
      blocks[j][i].display();
    }
  }
}


class Block {
  PVector pos;
  float cellSize = 50;
  float c;
  
  Block(int x, int y) {
   pos = new PVector(x * cellSize, y * cellSize);
   c = 255;
  }
  
  void display() {
    noStroke();
    fill(c);
    rect(pos.x, pos.y, cellSize, cellSize);
  }
}

class LightColor extends Block {
 LightColor(int x, int y) {
  super(x, y);
  c = 220;
 }
}

class DarkColor extends Block {
  DarkColor(int x, int y) {
   super(x, y);
   c = 60;
  }
}
