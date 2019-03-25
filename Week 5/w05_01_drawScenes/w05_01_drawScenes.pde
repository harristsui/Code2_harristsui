// bryan ma for code 2 sp 19

int scene = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  fill(0);
  switch (scene) {
    case 0:
      ellipse(200, 200, 100, 100);
      text("anyKeys", width/2, height/2);
      break;
    case 1:
      rect(300, 300, 100, 100);
      text("leftClick", width/2, height/2 - 50);
      break;
    case 2:
      triangle(0, 0, width, 0, width/2, height);
      text("UP", 520, 580);
      break;
    case 3:
      text("DONE", 100, 100);
      break;
    default:
      break;
  }
}

void keyPressed() {  
  switch (scene) {
    case 0:
      advance();
      break;
    case 2:   
    if(key == CODED) {
      if(keyCode == UP) {
        advance();
        break;
      }
    }
  }
}

void advance() {
  scene++;
}


void mousePressed() {
  if(mouseButton == LEFT){ 
    scene = 1;
    advance();   
  } 
}
