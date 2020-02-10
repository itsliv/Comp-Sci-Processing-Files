float[] xCoords = new float[50];
float[] yCoords = new float[50];

void setup() {
  size(1080, 880);
  for (int i = 0; i<50; i++) {
    xCoords[i] = random(width);
    yCoords[i] = random(height);
  }
  textSize(30);
  frameRate(15);
}

void draw() {
  fill(0,40);
  rect(0, 0, width, height);
  fill(0,255,0);
  for (int i = 0; i<50; i++) {
    char randomLetter = char(int(random(67, 189)));
    text(randomLetter, xCoords[i], yCoords[i]);
    yCoords[i] += 8;
    if (yCoords[i] > height) yCoords[i] = 0;
  }
}