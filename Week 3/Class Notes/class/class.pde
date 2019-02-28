Block[][] blocks = new Block[3][3];


void setup() {
  size(600, 600);
  for(int i = 0; i < 3; i++) {
    for(int i = 0; i < 3; i++) {
      blocks = new Block (i, j);
    }
  }
}


void draw() {
  for(int i = 0; i < 3; i++) {
   for(int i = 0; i < 3; i++) {
     blocks[i][j].display();
   }
  }
}


class Block {
  PVector pos;
  float c;
  float cellSize = 100;
  
  Block (int row, int col){
    pos = new PVector(row * cellSize, col * cellSize);

  }
  
  void display() {
    fill(c);
    rect(pos.x, pos.y, cellSize, cellSize);
  }
  
  
}
