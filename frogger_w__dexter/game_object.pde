class GameObject {

  float x, y;
  color c;
  float speed;

  GameObject(float nx, float ny, float nspeed) {
    x = nx;
    y = ny;
    speed= nspeed;
    c = color(110, 71, 26);
  }
  void move() {
    x += speed;
    if (x<0) x += width;
    if (x > width) x = 0;
  }
  void display() {

    for (int lines = 0; lines < width; lines +=50) {
      line(900, lines, 0, lines);
    }
  }
  boolean hitTest(float px, float py) {
    if (abs(px-x) < 30 && abs(py-y) < 10) {
      return true;
    } else return false;
  }
}