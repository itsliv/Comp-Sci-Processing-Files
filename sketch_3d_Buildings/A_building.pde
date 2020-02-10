class Building {

  float x, y, z;
  float h;

  Building(float sx, float sy, float sz) {
    x = sx;
    y = sy;
    z = sz;
    h = random(40, 200);
  }
  void render() {
    pushMatrix();
    translate(x, y-h/2, z);
    box(40, h, 40);
    popMatrix();
  }
}