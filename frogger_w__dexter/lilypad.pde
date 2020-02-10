class Lily extends GameObject {
  PImage img;

  Lily(float nx, float ny, float nspeed, PImage lily) {
    super(nx, ny, nspeed);
    img = lily;
  }
  void display() {
    image(img, x, y);
  }
  boolean hitTest (float px, float py) {
    if (abs(px - x-10) < 75 && abs(py-y-30)<30) {
      return true;
    } else return false;
  }
}