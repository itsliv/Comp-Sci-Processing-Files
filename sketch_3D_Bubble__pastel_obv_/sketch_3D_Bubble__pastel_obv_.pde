Bubble[] bubbles = new Bubble [50];

void setup() {
  size(800, 600, P3D);
  for (int i = 0; i < 50; i++) {
    bubbles[i] = new Bubble ();
  }
}

void draw(){
  background(186,255,255);
  noStroke();
  fill(246,194,201);
  for(int i = 0; i <50; i++){
    bubbles[i].move();
    bubbles[i].display();
  }
}