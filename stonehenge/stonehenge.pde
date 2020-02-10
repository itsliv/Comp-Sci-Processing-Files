
StoneArch[] arches = new StoneArch[10];

void setup() {
  size(400, 600, P3D); 
  for (int i = 0; i<10; i++) {
    arches[i] = new StoneArch(0, 0, 400);
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i<10; i++) {
    float ang = 2*PI/i;
    pushMatrix();
    rotateY(ang);
    arches[i].render();
    popMatrix();
  }
}