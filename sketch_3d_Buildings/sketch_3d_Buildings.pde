Building[] buildings = new Building[100];
float ang = 0;

void setup() {
  size(800, 600, P3D);
  frameRate(30);
  int i = 0;
  for (int x = -250; x <250; x +=50) {
    for (int z =-250; z <250; z +=50) {
      buildings[i] = new Building(x, 0, z);
      i ++;
    }
  }
}

void draw() {
  background(50);
  translate(mouseX, mouseY, -500);
  rotateY(ang);
 // rotateX(radians(30));
  ang +=.01;
  noStroke();
  
  for (int i = 0; i < 100; i ++) {
    fill(random(100,255),random(100,255),random(100,255));
    buildings[i].render();
  }
}