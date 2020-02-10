class Car {

  float x, y;
  color c;
  float speed;

  Car() {
    x = random(width);
    y = random(height);
    c = color(random(255), random(255), random(255));
    speed = random(1, 5);
  }
  void move() {
    x += speed;
    if (x > width) x = 0;
  }
  void display() {
    fill(c);
    noStroke();
    rect(x, y, 100, 40);
    rect(x+20, y-10, 60, 60);
  }
}