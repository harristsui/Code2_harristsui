void setup() {
  size(1000, 1000);
}


void draw() {
  for(int i = 0; i < width; i+=10) {
   for(int j = 0; j < height; j+=10) {
     fill (255);
     //noStroke();
     rect(i, j, 10, 10);
   }
  }
  
}
