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
      text("rightClick", 520, 580);
      break;
    case 3:
      text("fin", 100, 100);
      break;
    default:
      break;
  }
}

void keyPressed() {
  switch (scene) {
    case 0:
    if(key == CODED) {
     if(keyCode == TAB) {
      scene = 2; 
      advance();
      break;
      //Not sure why this part doesn't work, would be great if you can leave me with a comment on this! Thanks.
     }
    }
      advance();
      break;
  } 
}

void advance() {
  scene++;
}


void mousePressed() {
  if(mouseButton == LEFT) {
    switch (scene) {
      case 1:
        advance();
        break;
    }
  }
  //if(mouseButton == RIGHT) {
  //  switch (scene) {
  //    case 2:
  //      advance();
  //      break;
  //  }
  //}  
}
