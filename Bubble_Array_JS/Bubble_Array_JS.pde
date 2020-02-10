var xCoords = new Array[200];
var yCoords = new Array[200];

function setup() {
  createCanvas(600, 400);
  frameRate(50);
  for (var i = 0; i<200; i++) {
    xCoords[i] = random(width);
    yCoords[i] = random(height);
  }
}

function draw() {
  background(80);
  fill(0);
  rect(0, 0, width, height);
  stroke(255);
  strokeWeight(20);
  fill(0,0,255);
  ellipse(touchX, touchY, 300, 300);

  for (var i = 0; i<200; i++) {
    if (dist(touchX, touchY, xCoords[i], yCoords[i])<150) {
      noFill();
      strokeWeight(1);
        ellipse(xCoords[i], yCoords[i], 5, 5);
    }
    xCoords[i]+=random(-2, 2);
    yCoords[i]-=1;
    xCoords[i]+= -.2;
    if (xCoords[i] < 0) xCoords[i] = width;
    yCoords[i]+= -1;
    if (yCoords[i] < 0) yCoords[i] = height;
  }
}