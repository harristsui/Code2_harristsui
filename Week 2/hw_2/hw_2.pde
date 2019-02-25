final int COLS = 25;
final int ROWS = 25;

Block[][] b = new Block[COLS][ROWS];


void setup() {
  size(600, 600);
  background(255);
  noStroke();
  
  for(int i = 0; i < COLS; i++) {
   for(int j = 0; j < ROWS; j++) {
     b[i][j] = new Block(i, j);
   }
  }
}

void draw() {
  for(int i = 0; i < COLS; i++) {
   for(int j = 0; j < ROWS; j++) {
     b[i][j].display();
   }
  }
}
