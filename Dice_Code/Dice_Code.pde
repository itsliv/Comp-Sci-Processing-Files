int randNum;
void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  delay(700);
}
void mousePressed() {
  randNum = int(random(1, 7));

  if (randNum == 1) {
    fill(0, 255, 0);
    rect(100, 100, 200,200);
    fill(255);
    ellipse(200, 200, 20, 20);
    // middle ellipse(200,200,20,20);
    // right bottom corner ellipse(260,260,20,20);
    // left top corner ellipse(140,140,20,20);
    // right top corner ellipse(260,140,20,20);
    // left bottom corner ellipse(140,260,20,20);
    // middle left ellipse(140,200,20,20);
    // middle right ellipse(260,200,20,20);
  } else if (randNum == 2) {
    fill(0, 255, 0);
    rect(100, 100, 200, 200);
    fill(255);
    // middle ellipse(200,200,20,20);
    ellipse(260, 260, 20, 20);
    ellipse(140, 140, 20, 20);
    // right top corner ellipse(260,140,20,20);
    // left bottom corner ellipse(140,260,20,20);
    // middle left ellipse(140,200,20,20);
    // middle right ellipse(260,200,20,20);
  } else if (randNum == 3) {
    fill(0, 255, 0);
    rect(100, 100, 200,200);
    fill(255);
    ellipse(200, 200, 20, 20);
    ellipse(260, 260, 20, 20);
    ellipse(140, 140, 20, 20);
    // right top corner ellipse(260,140,20,20);
    // left bottom corner ellipse(140,260,20,20);
    // middle left ellipse(140,200,20,20);
    // middle right ellipse(260,200,20,20);
  } else if (randNum == 4) {
    fill(0, 255, 0);
    rect(100, 100, 200,200);
    fill(255);
    // middle ellipse(200,200,20,20);
    ellipse(260, 260, 20, 20);
    ellipse(140, 140, 20, 20);
    ellipse(260, 140, 20, 20);
    ellipse(140, 260, 20, 20);
    // middle left ellipse(140,200,20,20);
    // middle right ellipse(260,200,20,20);
  } else if (randNum == 5) {
    fill(0, 255, 0);
    rect(100, 100, 200,200);
    fill(255);
    ellipse(200, 200, 20, 20);
    ellipse(260, 260, 20, 20);
    ellipse(140, 140, 20, 20);
    ellipse(260, 140, 20, 20);
    ellipse(140, 260, 20, 20);
    // middle left ellipse(140,200,20,20);
    // middle right ellipse(260,200,20,20);
  } else if (randNum == 6) {
    fill(0, 255, 0);
    rect(100, 100, 200,200);
    fill(255);
    // middle ellipse(200,200,20,20);
    ellipse(260, 260, 20, 20);
    ellipse(140, 140, 20, 20);
    ellipse(260, 140, 20, 20);
    ellipse(140, 260, 20, 20);
    ellipse(140, 200, 20, 20);
    ellipse(260, 200, 20, 20);
  }
  loop() ;
  }