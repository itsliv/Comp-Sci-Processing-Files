class Bubble {

  float x, y, z;
  Bubble() {
    x = random(-1000, 1000);
    y = random(-1000, 1000);
    z = random(-1000, 1000);
  }
  void move() {
    y -=2;
    if (y< -1000) y = 1000;
  }
  void display() {
    pushMatrix();
    translate(x, y, z);
    sphereDetail(10);
    noStroke();
    sphere(10);
    popMatrix();
  }
}