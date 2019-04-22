ArrayList<Generator> generators;

void setup() {
  size(800, 800, P3D);
  generators = new ArrayList<Generator>();
  rotateX(radians(-10));
}

void draw() {
  background(0);
  for(int i = 0; i < generators.size(); i++) {
    generators.get(i).addP();
    generators.get(i).updateP();
  }
}

void mousePressed() {
  generators.add(new Generator(mouseX, mouseY));
}
