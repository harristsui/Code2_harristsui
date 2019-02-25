final int XPOS = 20;
final int YPOS = 20;
PVector pos1 [][] = new PVector[XPOS][YPOS];
PVector pos2 [][] = new PVector[XPOS][YPOS];
color c;



void setup() {
  background(255);
  size(1000, 1000);
  

}



void draw() {
  for (int i = 0; i < 20; i++) {
   for (int j = 0; j < 20; j++) {
    pos1[i][j] = new PVector(int(random(width)), int(random(width/2)));
    pos2[i][j] = new PVector(int(random(width)), int(random(width/2, width)));
   }
  }
  color c = color(random(255), random(255), random(255));
  for (int i = 0; i < 20; i++) {
   for (int j = 0; j < 20; j++) {
     stroke(c);
     line(pos1[i][j].x, pos1[i][j].y, pos2[i][j].x, pos2[i][j].y); 
   }
  }
  
}
