float x,y,ang,speed;

void setup() {
  size(800, 800);
  x = y = 200;
  ang = 0;
  speed = 0;
  background(#ffd1dc);
}

void draw() {
  //background(#ffd1dc);
  if(mousePressed){
    ang = atan2(mouseY-height/2, mouseX-width/2);
    speed = 7;
    x = width/2;
    y = height/2;
  }
  fill(#aec6cf);
  noStroke();
  ellipse(x,y,100,100);
  x += cos(ang)*speed;
  y += sin(ang)*speed;
}