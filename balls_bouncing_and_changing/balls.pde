class Ball {
  float x, y, z, mx, my, mz, s; 
  color c;
  Ball() {
    x = random(-400, 400);
    y = random(-400, 400);
    z = random(-400, 400);

    mx = random(3); 
    my = random(3); 
    mz = random(3);
    s = random(10, 50);
    c = color(random(100, 255), random(100, 255), random(100, 255));
  }


  void move() { 
    x += mx;
    y+= my;
    z += mz;
    if (y>400||y< -400) {
      my*=-1;
      c = color(random(100, 255), random(100, 255), random(100, 255));
      s = random(10, 50);
    }

    if (x>400 || x<-400) {
      mx*=-1;
      c = color(random(100, 255), random(100, 255), random(100, 255));
      s = random(10, 50);
    }
    if (z>400 || z <-400) {
      mz*=-1;
      c = color(random(100, 255), random(100, 255), random(100, 255));
      s = random(10, 50);
    }
  }

  void render() {
    noStroke();
    fill(c);

    pushMatrix();
    translate(x, y, z);
    box(s);
    popMatrix();
  }
}