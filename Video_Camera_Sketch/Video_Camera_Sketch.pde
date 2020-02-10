import processing.video.*;
Capture cam;
void setup(){
  size(640,360);
  cam = new Capture(this,640,360);
  cam.start();
  frameRate(15);
}

void draw(){
  background(0);
  if (cam.available() == true){
    cam.read();
    image(cam, 0,0);
  }
}