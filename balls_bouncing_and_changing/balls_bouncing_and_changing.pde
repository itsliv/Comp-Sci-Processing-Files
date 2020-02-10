Ball[] balls = new Ball[100];
float ang;

void setup() {
  size(800, 600, P3D);
  for (int i=0; i<80; i++) {
    balls[i] = new Ball();
  }
}

void draw() {
  background(209, 255,220);
  translate(width/2, height/2, -800);
  rotateY(ang);
  ang += .01;
  noFill();
  strokeWeight(20);
  stroke(253,253,175);
  box(800);

  for (int i = 0; i< 80; i++) {
    balls[i].move();
    balls[i].render();
  }
}
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