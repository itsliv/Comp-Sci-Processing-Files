import processing.video.*;
Capture cam;
PImage screenImage, backgroundImage;
int THRESHOLD = 80;
void setup() {
  size(400, 266);
  cam =new Capture(this, 400, 266);
  cam.start();
  screenImage = createImage(400, 266, RGB);
  backgroundImage = loadImage("landscape.jpg");
}
void draw() {
  THRESHOLD = mouseX;
  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
    color baseColor = cam.pixels[0];
    for (int i = 1; i< cam.pixels.length; i++) {
      color currentColor = cam.pixels[i];
      float colorDif = comparePixels(currentColor, baseColor);
      if (colorDif< THRESHOLD) {
        screenImage.pixels[i] = backgroundImage.pixels[i];
      } else {
        screenImage.pixels[i] = cam.pixels[i];
      }
    }
    screenImage.updatePixels();
    image(screenImage, 0, 0);
  }
}

float comparePixels(color c1, color c2) {

  float r1 = red(c1);
  float g1 = green(c1);
  float b1 = blue(c1);

  float r2 = red(c2);
  float g2 = green(c2);
  float b2 = blue(c2);

  float differenceValue = abs(r1-r2) +abs(g1-g2)+abs(b1-b2);
  return differenceValue;
}