Block[][] blocks = new Block[8][12];

int[][] level = {
  {3,3,0,0,2,0,0,2,0,0,0,0},
  {0,0,0,2,0,0,0,0,2,0,0,0},
  {0,0,0,0,1,0,0,1,0,0,0,0},
  {0,0,1,0,0,0,0,0,0,1,0,0},
  {0,0,1,0,0,0,0,0,0,1,0,0},
  {0,0,0,1,0,0,0,0,1,0,0,0},
  {0,0,0,0,1,1,1,1,0,0,0,0},
  {0,0,0,0,0,0,0,0,0,0,0,0}
};

void setup() {
  size(600, 600);

  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 8; j++) {
      if (level[j][i] == 0) {
        blocks[j][i] = new DarkBlock(i, j);
      } else if (level[j][i] == 1){
        blocks[j][i] = new LightBlock(i, j);  
      } else  if(level[j][i] == 2) {
        blocks[j][i] = new RedBlock(i, j); 
      } else if(level[j][i] == 3) {
        blocks[j][i] = new BigBlock(i,j);
      }
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 8; j++) {
      blocks[j][i].display();
    }
  }
}

void mousePressed() {
}

class Block {
  PVector pos;
  float c;
  float cellsize;

  Block(int row, int col) {
    cellsize = 50;
    pos = new PVector(row * cellsize, col * cellsize);
    float r = random(1);
    if (r > 0.5) {
      c = 230;
    } else {
      c = 50;
    }
  }

  void display() {
    fill(c);
    rect(pos.x, pos.y, cellsize, cellsize);
  }
}

class LightBlock extends Block {
  LightBlock(int row, int col) {
    super(row, col);
    c = 220;
  }
}

class DarkBlock extends Block {
  DarkBlock(int row, int col) {
    super(row, col);
    c = 50;
  }
}

class RedBlock extends Block {
  RedBlock(int row, int col) {
    super(row,col);
    c = 25;
  }
}

class BigBlock extends Block {
  BigBlock(int row, int col) {
    super(row, col);
    cellsize = 5;
    c = 255;
  }
}
