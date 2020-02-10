
float ang = 0;

void setup() {
  size(800, 600, P3D);
  colorMode(HSB);
  
}

void draw() {
  background(#f1cbff);
  translate(width/2, height/2, -100);
  rotateX(ang);
  rotateY(ang);
  ang += .01;
  
  for (int x = -100; x <= 100; x +=100) {
    for (int y = -100; y <= 100; y +=100) {
      for (int z = -100; z <= 100; z +=100) {
        pushMatrix();
        noStroke();
        fill(random (255),100,255);
        translate (x, y, z);
        box(100);
        popMatrix();
      }
    }
  }
}