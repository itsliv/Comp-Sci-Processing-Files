void setup () {
  size(600, 600);
  noCursor();
}

void draw() {
  background(0);
  for (int x = 0; x<= width; x += 20) {
    for (int y = 0; y <= height; y +=20) {
      float d = dist(mouseX, mouseY, x, y);
      d=d/20;
      noStroke();
      fill(0,255,200);
      ellipse(x, y, d, d);
    }
  }
}