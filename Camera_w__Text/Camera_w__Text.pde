import processing.video.*;
Capture cam;
void setup() {
  size(640, 480);
  cam = new Capture(this, 640, 480);
  cam.start();
  frameRate(15);
}
void draw() {
  background(0);
  if (cam.available() == true) {
    cam.read();
    cam.loadPixels();
    //image(cam, 0,0);
    for (int x = 0; x < width; x +=10) {
      for (int y = 0; y < height; y += 10) {
        int i = x + (y * width);
        color c = cam.pixels[i];
        fill(c);
        textSize(10);
        text('Ω', x, y);
      }
    }
  }
}