class Bloom {

  float x, y;
  float s;
  color c;
  int lives;

  Bloom() {
    x = random(width);
    y = random(height);
    c = color(random(100), random(100), random(100));
  }

  Bloom(float nx, float ny) {
    x = nx;
    y = ny;
    c = color(random(255), random(255), random(255),50);
  }



  void update() {
    s++;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, s, s);
  }
}