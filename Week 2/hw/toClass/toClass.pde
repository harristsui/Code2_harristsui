//create OBj.
Pixel newPix;

void setup() {
  size(600, 600);
  background(255);
  noStroke();
  newPix = new Pixel();
}

void draw() {
  newPix.draw();

}

void mousePressed() {
  background(255);
  //How do I reset the sketch? .clear() doesn't work in this case. 
}

class Pixel {
  
  final int COLS = 25;
  final int ROWS = 25;
  int cellSize = width/COLS;
  PVector[][] positions = new PVector[COLS][ROWS];
  boolean[][] isActive = new boolean[COLS][ROWS];
  color[][] colors = new color[COLS][ROWS];
  
  Pixel () {
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      positions[i][j] = new PVector(i * cellSize, j * cellSize);
      isActive[i][j] = false;
      colors[i][j] = color(random(255), random(255), random(255));
    } 
  }
  }
  
  void draw() {
    for (int i = 0; i < COLS; i++) {
      for (int j = 0; j < ROWS; j++) {
        if (isActive[i][j]) {
          fill(colors[i][j]);
          rect(positions[i][j].x, positions[i][j].y, cellSize, cellSize);
        } else {
        if (mouseX > positions[i][j].x && mouseX < positions[i][j].x + cellSize && 
          mouseY > positions[i][j].y && mouseY < positions[i][j].y + cellSize) {
          isActive[i][j] = true;
          }  
        }  
     }
   }
  }
  
}
