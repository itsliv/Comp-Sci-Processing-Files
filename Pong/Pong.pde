float x = width/2;
float y = height/2;
float my = 2;
float mx = 2;
int p2y = 100;
int px = 0;
int py = 0;

void setup() {
  size(600, 400);
}
void draw() {
  drawBackground();
  theBall();
  drawPaddles();

  //player 1 bounce
  if (hitTest(30, mouseY + 30)) {
    mx *= -1;
  }

  // player 2 bounce
  if (hitTest(width - 30, p2y+30)) {
    mx *= -1;
  }
}

void drawBackground() {
  background(0);
  // rectangle line 
  fill(231, 41, 230);
  int y = 7;
  while (y <  400) {
    rect (290, y, 10, 10);
    y += 25;
  }
}

void drawPaddles() {
  fill(0, 41, 230);
  rect(20, mouseY, 20, 80);

  rect(width-50, p2y, 20, 80);

  if (keyPressed) {
    if (key == 'o') {
      p2y -= 7;
    }

    if (key == 'l') {
      p2y += 7;
    }
  }
}

void theBall() {
  ellipse(x, y, 20, 20);
  x += mx;
  y += my;

  if (y > height || y < 0 ) {
    my *=-1;
  }
}

boolean hitTest(float px, float py) {
  if (abs(px-x) < 10 && abs(py-y) < 30) {
    return true;
  } else return false;
}