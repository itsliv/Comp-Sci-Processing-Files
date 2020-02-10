float angle = 0;
int distance = 100;
float x, y;
float theta = 0;

void setup() {
  size(400, 400);
  background(#ffd1dc);
}

void draw() {
  fill(200, 10);
  noStroke();
  rect(0, 0, width, height);
  fill(random(100, 255), random(100, 255), random(100, 255));
  translate(0, height/2);

  x +=1;
  if(x>width)x = 0;
  y = (distance*sin(theta));
  fill(#aec6cf);
  ellipse(x,y,10,10);
  theta += .03;
}