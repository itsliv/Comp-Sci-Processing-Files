int []xpos = new int[50];
int[] ypos = new int[50];

void setup() {
  size(800, 600);
  smooth();
  // noCursor();
  noStroke();


  for (int i = 0; i < 50; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw() {
  background(58,61,60);
  for (int i = 0; i <49; i++) {
    xpos[i] = xpos[i+1];
    ypos[i] = ypos[i+1];
  }

  xpos[xpos.length-1] = mouseX;
  ypos[ypos.length-1] = mouseY;

  for (int i = 0; i < 50; i++) {
    noStroke();
    fill(255-i*5,209,100);
    ellipse(xpos[i]+=random(-2,2), ypos[i]+i*10-500, i, i);
  }
}