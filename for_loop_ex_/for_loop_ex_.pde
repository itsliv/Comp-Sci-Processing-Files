PImage img;
int i =0;

void setup() {
  size(640, 426);
  img = loadImage("swedenhouses.jpg");
  noStroke();
}

void draw() {
  loadPixels();
  for (int x = 0; x < img.width; x += 8) {
    for (int y = 0; y <img.height; y+= 8) {

      int i = x +y * img.width;
      color c = img.pixels[i];
      fill(c);
      if (brightness(c) > 127)
        text(".", x, y);
      else
        text("@", x, y);
   }
   pixels[x] = i;
  }
  updatePixels();
}