PImage img;
PFont font;

void setup() {
  size(500, 260);
  img = loadImage("guy.jpg");
}

void draw() {
  loadPixels();
  for (int i = 0; i <img.pixels.length; i++) {
    float bright = brightness(img.pixels[i]);
    // red
    if (bright >220) {
      pixels[i] = color(232, 40, 40);
      // NAVY
    } else if (bright >120) {
      pixels[i] = color(13, 10, 70); 
      // light blue
    } else if (bright > 25) {
      pixels[i] = color(16, 75, 145);
      // white
    } else {
      pixels[i] = color(232, 237, 214);
    }
  }
  updatePixels();

  fill(13, 10, 70);
  font = createFont("Impact-48.vlw", 24);
  textFont(font);
  text("WELCOME TO", 10, 100);

  fill(232, 40, 40);
  font = createFont ("Impact-48.vlw", 28);
  textFont(font);
  text("FLAVORTOWN", 10, 150);
}