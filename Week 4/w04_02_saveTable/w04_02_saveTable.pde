// bryan ma for code 2 sp 19 A

Table data;

void setup() {
  size(600,600);
  data = loadTable("data.csv", "header");
  
  for (int i = 0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    int x = row.getInt("x");
    int y = row.getInt("y");
    int size = row.getInt("size");
    int c = row.getInt("color");
    fill(c);
    ellipse(x, y, size, size);
  }
}

void draw() {}

void mousePressed() {
  int s = int(random(50, 200));
  int c = int(random(0, 255));
  fill(c);
  ellipse(mouseX, mouseY, s, s);
  TableRow newRow = data.addRow();
  newRow.setInt("x", mouseX);
  newRow.setInt("y", mouseY);
  newRow.setInt("size", s);
  newRow.setInt("color", c);
  saveTable(data, "data/data.csv");
  //why is there a row of ,,,, in the data sheet?
}
