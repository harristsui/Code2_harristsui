// bryan ma for code 2 sp 19 A

Table data;

void setup() {
  size(600,600);
  data = loadTable("data.csv", "header");
}

void draw() {}

void mousePressed() {
  int s = int(random(50, 200));
  color c = int(color(random(255), random(255), random(255)));
  fill(c);
  ellipse(mouseX, mouseY, s, s);
  TableRow newRow = data.addRow();
  newRow.setInt("x", mouseX);
  newRow.setInt("y", mouseY);
  newRow.setInt("size", s);
  newRow.setInt("color", c);
  saveTable(data, "data/data.csv");
}
