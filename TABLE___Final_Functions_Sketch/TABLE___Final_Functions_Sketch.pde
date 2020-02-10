void setup() {
  size(500, 500, P3D);
  pushMatrix();
  pushMatrix();
  pushMatrix();
  translate(250, 250, 0);
  fill(255);
  rotateY(0.5);
  box(160, 40, 200);

  translate(53, 68, 90);
  box(25, 100, 25);

  popMatrix();
  rotateY(0.5);
  translate(250, 315, 100);
  box(25, 100, 25);

  popMatrix();
  rotateY(0.5);
  translate(135, 317, 100);
  box(25, 100, 25);
  
  popMatrix();
  rotateY(0.5);
  translate(200,328,100);
  box(25,140,25);
}