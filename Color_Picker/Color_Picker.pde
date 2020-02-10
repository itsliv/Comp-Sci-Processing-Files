PImage img;
int x = mouseX;
int y = mouseY;

void setup() {
  size(600, 800);
  img = loadImage("teddy.jpg");
}

void draw() {
  strokeWeight(0);
  image(img, 0, 0);

  int index = mouseX + mouseY + img.width;
  float r = red(img.pixels[index]);
  float g = green(img.pixels[index]);
  float b = blue(img.pixels[index]);

//emilio helped me!!!!
  noStroke();
  fill(255,100);
  ellipse(mouseX, mouseY, 100, 100);
  fill(0);
  text("R: "+r, mouseX-30, mouseY-10);
  text("G: "+g, mouseX-30, mouseY+10);
  text("B: "+b, mouseX-30, mouseY+30);
}