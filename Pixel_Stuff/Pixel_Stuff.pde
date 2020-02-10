PImage img;

void setup() {
  size(537, 537);
  img = loadImage("elsa.JPG");
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
  textSize(24);
  text('#',x,y);



  //  for (int x = 0; x< img.width; x+= 10) {
  //    for (int y = 0; y < img.height; y +=10) {
  //      int index = x + y * img.width; 
  //      color c = img.pixels[index];
  //      fill(c);
  //      ellipse(x, y, 10, 10);
  //    }
  //  }
  //}
}