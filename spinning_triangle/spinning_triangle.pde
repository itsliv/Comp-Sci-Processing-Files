float angle = 0;
int distance = 100;
float x1, y1, x2, y2, x3, y3;

void setup() {
  size(400, 400);
}

void draw() {
  fill(220, 10);
  noStroke();
  rect(0, 0, width, height);
  fill(random(100, 255), random(100, 255), random(100, 255));
  translate(width/2, height/2);

  x1 = (distance*cos(angle));
  y1 = (distance*sin(angle));

  x2 = (distance* cos(angle+PI*2/3));
  y2 = (distance* sin(angle+PI*2/3));

  x3 = (distance* cos(angle+PI*4/3));
  y3 = (distance* sin(angle+PI*4/3));

  triangle(x1, y1, x2, y2, x3, y3);
  angle+=200;
}