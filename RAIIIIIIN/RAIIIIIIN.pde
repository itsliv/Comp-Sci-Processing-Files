float[] xCoords = new float[500];
float[] yCoords = new float[500];

void setup() {
  size(600, 400);
  for (int i = 0; i<500; i++) {
    xCoords[i] = random(width);
    yCoords[i] = random(height);
  }
}

void draw() {
  fill(0, 20);
  rect(0, 0, width, height);
  stroke(255);
  for (int i = 0; i<500; i++) {
    point(xCoords[i], yCoords[i]);
    xCoords[i]+= -.2;
    if (xCoords[i] < 0) xCoords[i] = width;
    yCoords[i]+= 1;
    if (yCoords[i] > height) yCoords[i] = 0;
  }
}