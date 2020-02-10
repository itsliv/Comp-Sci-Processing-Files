//Animation - Liv
float[] xCoords = new float[2000];
float[] yCoords = new float[2000];

void setup() {
  
  size(600, 800);
  for (int i = 0; i<2000; i++) {
    xCoords[i] = random(width);
    yCoords[i] = random(height);
  }
}

void draw() {
  background(100);
  fill(25);
  rect(0, 0, width, height);
  stroke(0);
  for (int i = 0; i<2000; i++) {
    fill(random(155,255),random(0,130),0);
    noStroke();
    ellipse(xCoords[i], yCoords[i],5,5);
    xCoords[i]+= -.1;
    if (xCoords[i] < 0) xCoords[i] = width;
    yCoords[i]+= 7;
    if (yCoords[i] > height) yCoords[i] = 0;
    frameRate(70);
  }

  //background(220, 0, 0);
  //outline
  noStroke();
//  stroke(220,0,0);
  fill(100);
  beginShape();
  vertex(235, 245);
  vertex(290, 240);
  vertex(320, 270);
  vertex(340, 330);
  vertex(300, 380);
  vertex(240, 370);
  vertex(215, 290);
  endShape(CLOSE);
  //shadow
  fill(50);
  quad(290, 240, 320, 270, 290, 290, 270, 270);
  quad(320, 270, 340, 330, 310, 340, 300, 310);
  quad(215, 290, 250, 330, 260, 350, 240, 370);
  //face
  //fill(240,100);
  fill(20);
  //brows and iris
  quad(250, 260, 260, 260, 240, 280, 230, 285);
  quad(230, 290, 250, 280, 250, 290, 230, 295);
  quad(270, 260, 280, 255, 295, 260, 280, 270);
  quad(285, 280, 295, 265, 310, 275, 300, 275);
  //nose
  quad(265, 285, 275, 285, 285, 300, 260, 305);
  //mouth
  quad(265, 315, 280, 310, 295, 330, 260, 330);
  quad(260, 330, 295, 330, 295, 335, 265, 340);
  quad(270, 345, 295, 345, 290, 350, 270, 350);
}