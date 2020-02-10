class Frog {
  PImage frog;
  float x, y;

  Frog(float nx, float ny) {
    x = nx;
    y = ny;
    frog = loadImage("froggy.png");
  }
    void display() {
      image(frog, x,y);

    }
}
  