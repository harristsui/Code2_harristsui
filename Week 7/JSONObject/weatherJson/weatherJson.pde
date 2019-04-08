JSONObject data0;
JSONObject data1;
String london = "London";
String gz = "GuangZhou";
int state = 0;
int bgC;
int textC;
int testing = 299;
float c;

void setup() {
  size(1000, 1000);
}



void draw() {
  background(bgC);
  textSize(50);
  fill(textC);
  text("", 250, 250);
  
  if(dist(mouseX, mouseY, 250, 250) > 100 || dist(mouseX, mouseY, 250, 750) > 100) {
    state = 0; 
  } 
  if(dist(mouseX, mouseY, 250, 250) < 100) {
    state = 1;
  } 
  if(dist(mouseX, mouseY, 250, 750) < 100) {
    state = 2;
  } 
  
  cases();
}

void cases() {
 data0 = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=a470954c05063f8e3254e223b0ca1003");
 JSONArray weather0 = data0.getJSONArray("weather");
 JSONObject weatherNum0 = weather0.getJSONObject(0);
 String weatherStatus0 = weatherNum0.getString("description");
 
 data1 = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=Guangzhou,cn&APPID=a470954c05063f8e3254e223b0ca1003");
 JSONArray weather1 = data1.getJSONArray("weather");
 JSONObject weatherNum1 = weather1.getJSONObject(0);
 String weatherStatus1 = weatherNum1.getString("description");
 JSONObject temp1 = data1.getJSONObject("main");
 float temp1C = temp1.getFloat("temp");

 
 switch(state) {
   case 0:
   bgC = 255;
   textC = 0;
   textMode(CENTER);
   text(london, 250, 250);
   text(gz, 250, 750);
   break;
   
   case 1:
   bgC = 150;
   textC = 255;
   textMode(CENTER);   
   text(weatherStatus0, 250, 250);
   break;
   
   case 2:
   bgC = color(240, 0, 0);
   textC = 255;
   textMode(CENTER);
   text(weatherStatus1, 250, 750);
   text("Temp", 620, 750);
   fill(map(c, 0, 255, 0, temp1C));
   rect(620, 800, temp1C, 30, 5, 5, 5, 5);
   //what is the appropriate way to map the temp1C (around 299) to represent in a gradient color form by using the map function?  
   break;
 }
}
