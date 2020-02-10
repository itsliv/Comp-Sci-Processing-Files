int x = 0;
void setup() {
  size(600, 400);
}

void draw() {
  background (0);

  int time = millis();
  println(time);
  time %= width;
  println(time);
  ellipse(time, 200, 75, 75);
}