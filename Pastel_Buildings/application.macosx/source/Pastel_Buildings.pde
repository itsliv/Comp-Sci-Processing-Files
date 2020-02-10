
void setup() {
  background(#d1dcff);
  size(600, 400);
  frameRate(5);
}
void draw() {
  issaGur(0,300, 225, 100);
  issaGur(250, 100, 75,300);
  issaGur(360,200,120,400);
  
 
}
void issaGur(float bx, float by, float bw, float bh) {
  fill(100);
  noStroke();
  rect(bx, by, bw, bh);
  for (float x = bx + 5; x < bx+bw; x +=15) {
    for (float y = by + 5; y < height; y += 20) {
      issaBoi(x, y);
    }
  }
}

void issaBoi(float x, float y) {
  fill(#dcffd1);
  rect(x, y, 5, 10);
  float randNum = random(20);
  if(randNum> 15) fill (#ffd1dc);
  else fill(#dcffd1);
  rect(x,y,5,10);
}