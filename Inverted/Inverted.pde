PImage img;

void setup() {
  size(600, 600);
  img = loadImage("house.jpg");
}

void draw() {
  loadPixels();
  for (int i = 0; i < img.pixels.length; i++) {
    float r=red(img.pixels[i]);
    float g=green(img.pixels[i]);
    float b=blue(img.pixels[i]);
    color c = color (255-r, 255 - g, 255-b);
    pixels[i] = c;
  }
  updatePixels();
  if(mousePressed){
    image(img,0,0);
  }
}