void setup() {
  size(600, 400);
  background(100);
  noFill();
  stroke(255);
  strokeWeight(2);
  for (int x = 0; x<= width; x+=70) {
    rect(x, 200, 30, 30);
    rect(x-10, 190, 30,30);
    rect(x+10, 210,30,30);
  }
}