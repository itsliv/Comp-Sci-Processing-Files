PImage img;

void setup() {
  size(461, 438);
  img = loadImage("swimmingnun.jpg");
}

void draw() {
  loadPixels();
  noStroke();
  frameRate(1000);

  int x = int(random(img.width));
  int y = int(random(img.width));
  int index = x + y *img.width;
  color c = img.pixels[index];
  fill(c);
  triangle(x,y,x+random(-20,20),y+random(-20,20),x+random(-20,20),y+random(-20,20));

}