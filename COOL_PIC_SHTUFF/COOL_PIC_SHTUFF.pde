PImage wowzy;
PFont font;
void setup() {
  size(400, 600);
  wowzy = loadImage("berlin.jpg");
}

void draw() {
  background(255);
  image(wowzy, 0, 0);
  fill(255, 0, 200);
  wowza(mouseX, mouseY);
  font = createFont("Zapfino", 94);
  textFont(font);
}

void wowza(float x, float y) {
  textSize(40);
  text("wowza", x, y);
}