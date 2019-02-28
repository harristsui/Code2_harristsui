String data = "0,1,2,3,4,5";


void setup() {
  size(600, 600);
  background(255);
  String[] splitData = data.split(",");
  //println(splitData);
  for(int i = 0; i < splitData.length; i++) {
    ellipse(int(splitData[i]) * 100, height/2, 50, 50);
    println(int(splitData[i]) * 100); 
  }
}

void draw() {
  
  
}

//tile editor to do games
//load data with a csv sheets with table class
//Table data;
//data = loadTable(myCsv.csv)
//TableRow row = data.getRow(0);
//println(row.getStrong(2));
