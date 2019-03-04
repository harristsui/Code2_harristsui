// bryan ma for code 2 sp19 A

// replace the sizes integer array with csv data loaded externally.



void setup() {
  background(0);
  rectMode(CENTER);
  size(1000, 1000);
  Table myTable = loadTable("data.csv", "header");
  rectMode(CENTER);
  for(int i = 0; i < myTable.getRowCount(); i++) {
    TableRow row = myTable.getRow(i);
    float x = row.getInt("x");
    float y = row.getInt("y");
    float w = row.getInt("width");
    float h = row.getInt("height");
    fill(255);
    rect(x, y, w, h);
    //to my understanding, the sketch should only draw the last row of data before it exits the loop. 
    //How does it remember all of that data with those same float objects - x, y, w, h. 
  }
}

void draw() {
}
