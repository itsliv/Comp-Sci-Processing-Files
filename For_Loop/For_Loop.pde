void setup() {
  size(400, 400);
  background(50);
  for (int x = 0; x<= width; x+=50) {
    ellipse(x, 200, 60, 80);
    ellipse(x+10, 200, 40, 60);
    ellipse(x+20, 200, 20, 40);
  }
}