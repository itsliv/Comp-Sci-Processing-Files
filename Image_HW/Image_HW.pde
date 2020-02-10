
PImage img;
float offset = 0;
float easing = 0.05;

void setup() {
  size(400, 266);
  img = loadImage("landscape.jpg");
}

void draw() { 
  image(img, 0, 0); 
  float dx = (mouseX-img.width/2) - offset;
  offset += dx * easing; 
  tint(255, 127);  // Display at half opacity
  image(img, offset, 0);


}