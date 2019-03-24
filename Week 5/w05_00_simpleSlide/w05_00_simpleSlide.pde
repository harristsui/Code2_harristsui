// bryan ma for code 2 sp 19

int slide = 0;

color[] slideColors = {
  color(100, 120, 180),
  color(180, 120, 100),
  color(120, 100, 180),
  color(255, 0, 255)
};

String[] slideTexts = {
  "0 pressed",
  "1 pressed",
  "2 pressed",
  "3 pressed",
};

void setup() {
  size(600, 600);
}

void draw() {
  background(slideColors[slide]);
  text(slideTexts[slide], width/2, height/2);
}

void keyPressed() {
  switch (slide) {
    case 0:
    case 1:
    case 2:
      advance();
      break;
    case 3:
      break;
    default:
      break;
  }
}

void advance() {
  slide++;
}
