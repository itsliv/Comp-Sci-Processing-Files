
void setup() {
  
    size(400, 400);
    smooth();
    background(30);
  }

  void draw()
  {
    stroke (random(255), random (255), random(255), 60);
    //int moonSize = 120;
    int dia = 120;
    strokeWeight (random (0.25, 0.7));
    float angle1 = random (TWO_PI);
    float angle2 = random (TWO_PI);
    PVector p1 = new PVector (width/2 + cos (angle1) * dia, height/2 + sin (angle1) * dia);
    PVector p2 = new PVector (width/2 + cos (angle2) * dia, height/2 + sin (angle2) * dia);
    line(p1.x, p1.y, p2.x, p2.y);
  }