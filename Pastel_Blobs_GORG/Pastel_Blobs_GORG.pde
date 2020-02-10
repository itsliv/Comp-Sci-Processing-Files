var pptouchX = 0;
var pptouchY = 0;
var p1touchX = 0;
var p1touchY = 0;
var p2touchX = 0;
var p2touchY = 0;

function setup() {
  createCanvas(1080, 1000);
  frameRate();
}

function draw() {
  background(255,189,189);
  noStroke();
  fill(209, 220, 255);
  ellipse(touchX, touchY, 300, 300);
  fill(255, 209, 220);
  ellipse(ptouchX, pmtouchY, 250, 250);
  fill(253, 253, 175);
  ellipse(ppmtouchX, pptouchY, 200, 200);
  fill (209, 255, 220);
  ellipse(p1touchX, p1touchY, 150, 150);
  fill(221, 209, 255);
  ellipse(p2touchX, p2touchY, 100, 100);
  p2touchX = p1touchX;
  p2touchY = p1touchY;
  p1touchX = pptouchX;
  p1touchY = pptouchY;
  pptouchX = ptouchX;
  pptouchY = ptouchY;
}