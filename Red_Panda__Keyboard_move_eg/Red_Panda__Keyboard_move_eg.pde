PImage kyoot;
float x, y;

boolean up, down, left, right;

void setup() {
  size(600, 400);
  kyoot = loadImage("kyoot.jpg");
}
void draw() {
  background(0);
  image(kyoot, x, y);
  move();
}

void keyPressed() {
  if (key == 'a' || key == 'A')left = true;
  else if (key == 'd' || key == 'D')right = true;
  else if (key == 's' || key =='S')down = true;
  else if (key == 'w' || key == 'W')up = true;
  if (key == CODED) {
    if (keyCode == UP)up = true;
    else if (keyCode == DOWN)down = true;
    else if (keyCode == LEFT)left = true;
    else if (keyCode == RIGHT)right = true;
  }
}

void move() {
  if (up)y-=1;
  if (down)y+=1;
  if (right)x+=1;
  if (left)x-=1;
}

void keyReleased() {
  if (key == 'a' || key == 'A')left = false;
  else if (key == 'd' || key == 'D')right = false;
  else if (key == 's' || key =='S')down = false;
  else if (key == 'w' || key == 'W')up = false;
  else if (key == CODED) {
    if (keyCode == UP)up = false;
    else if (keyCode == DOWN)down = false;
    else if (keyCode == LEFT)left = false;
    else if (keyCode == RIGHT)right = false;
  }
}