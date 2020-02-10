float t1, t2, t3, t4;

void setup() {
  size(400, 400);
  noStroke();
  // time in milliseocnds that each rectanglel measures
  t1 = 5000;
  t2 = 3000;
  t3 = 1000;
  t4 = 30000;
}

void draw() {
  background(100);
  float w1 = millis()*width;
  float w2 = millis()*width;
  float w3 = millis()*width;
  float w4 = millis()*width;
  w1/=t1;
  w2/=t2;
  w3/=t3;
  w4/=t4;
  w1 %= width;
  w2 %= width;
  w3 %= width;
  w4 %= width;
  rect(0, 50, w1, 10);
  rect(0, 100, w2, 10);
  rect(0, 150, w3, 10);
  rect(0, 200, w4, 10);
}