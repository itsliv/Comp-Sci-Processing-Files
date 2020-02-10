PImage img;

void setup() {
  size(537, 715);
  img = loadImage("elsa.JPG");
}

void draw() {
  loadPixels();
  for (int i = 0; i <img.pixels.length; i++) {
    //get the RGB values from image
    float bright = brightness(img.pixels[i]);

    // make a new color and set pixel in the window
    color c;
    if (bright > 200) {
      c = color (255);
    } else {
      c = color(0);
    }
    pixels[i]=c;
  }
  updatePixels();
}