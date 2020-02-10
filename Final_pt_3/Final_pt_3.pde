PImage img;

void setup() {
  size(600, 600);
  img = loadImage("house.jpg");
}

void draw() {
  loadPixels();
  for (int i = 0; i < img.pixels.length; i++) {
    float r=red(img.pixels[i]);
    color c = color (r);
    pixels[i] = c;
  }
  updatePixels();
  if(mouseX >300){
    image(img,0,0);
  }
}