Table data; 
int x, y;

void setup() {
  size(800, 800);
  background(255);
  data = loadTable("data.csv", "header");

}

void draw(){
  int c;
  int size;
  for(int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    x = row.getInt("X");
    y = row.getInt("Y");
    c = row.getInt("Color");
    size = row.getInt("Size");
    fill(c);
    ellipse(x, y, size, size);
  }

}

//void mousePressed() {
//  int size = int(random(90, 300));
//  color c = color(random(255), random(255), random(255));


//  //saveTable(data, "data/data.csv");
//}
