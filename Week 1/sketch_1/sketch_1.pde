//final -- not meant to be changed

int cols = 80; 
int rows = 80;
int w = 800;
int h = 800;
final int CELLSIZE = w/cols;

PVector[][] pos = new PVector[cols][rows];
color[][] colors = new color[cols][rows];
boolean[][] isActive = new boolean[cols][rows];

void setup() {
  size(800, 800);
  for(int i = 0; i < cols; i++) {
    for(int j = 0; j < rows; j++) {
      pos[i][j] = new PVector(i * CELLSIZE, j * CELLSIZE);
      colors[i][j] = color(random(255), random(255), 255);
      isActive[i][j] = false;
    }
  }
  noStroke();
}


void draw() {
  for(int i = 0; i < cols; i++) {
   for(int j = 0; j < rows; j++) {
     if (mouseX > pos[i][j].x && mouseX < pos[i][j].x + CELLSIZE && mouseY > pos[i][j].y && mouseY < pos[i][j].y + CELLSIZE) {   
      isActive[i][j] = true; 
     }
      if (isActive[i][j]) {
        fill(colors[i][j]);
        rect(pos[i][j].x, pos[i][j].y, CELLSIZE, CELLSIZE);
      }
    }
  }
}
