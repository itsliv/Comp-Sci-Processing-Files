//Idea_Charlie
//Animation_Elijah
//Interaction_Liv
//feathers
float x = 300;
//head
float a = 100;
//beak
float b = 500;
float c = 20;

int [] xpos = new int[50];//leftflame
int [] ypos = new int[50];
int [] xpos2 = new int[50];//right flame
int [] ypos2 = new int[50];
int [] xpos3 = new int[50];//center flame
int [] ypos3 = new int[50];
int [] xpos4 = new int[50];//left inner flame
int [] ypos4 = new int[50];
int [] xpos5 = new int[50];//right inner flame
int [] ypos5 = new int[50];
int [] xpos6 = new int[50];//upper flame
int [] ypos6 = new int[50];


void setup() {
  size(800, 600);
  noStroke();
  smooth();

  for (int i = 0; i < 50; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}
void draw() {
  background(250, 20, 20);
  if (keyPressed) {
    for (int i = 0; i <49; i++) {
      xpos[i] = xpos[i+1];
      ypos[i] = ypos[i+1];

      xpos2[i] = xpos2[i+1];
      ypos2[i] = ypos2[i+1];

      xpos3[i] = xpos3[i+1];
      ypos3[i] = ypos3[i+1];

      xpos4[i] = xpos4[i+1];
      ypos4[i] = ypos4[i+1];

      xpos5[i] = xpos5[i+1];
      ypos5[i] = ypos5[i+1];
      
      xpos6[i] = xpos6[i+1];
      ypos6[i] = ypos6[i+1];
    }
    if (key == ' ') { 
      xpos[xpos.length-1] = 100;
      ypos[ypos.length-1] = 600;

      xpos2[xpos2.length-1] = 700;
      ypos2[ypos2.length-1] = 600;

      xpos3[xpos3.length-1] = 400;
      ypos3[ypos3.length-1] = 600;

      xpos4[xpos4.length-1] = 250;
      ypos4[ypos4.length-1] = 600;

      xpos5[xpos5.length-1] = 550;
      ypos5[ypos5.length-1] = 600;
      
      xpos6[xpos6.length-1] = mouseX;
      ypos6[ypos6.length-1] = 0;
    }

    for (int i = 0; i < 50; i++) {
      noStroke();
      fill(#F01818-i*5);
      ellipse(xpos[i]+=random(-2, 2), ypos[i]+i*10-500, i, 100);
      ellipse(xpos2[i]+=random(-2, 2), ypos2[i]+i*10-500, i, 100);
      ellipse(xpos3[i]+=random(-2, 2), ypos3[i]+i*10-500, i, 200);
      fill(255-i*5,209,100);
      ellipse(xpos6[i]+=random(-2, 2), ypos5[i]+i*10-500, i, i);
      fill(#F01818-i*5);
      ellipse(xpos4[i]+=random(-2, 2), ypos4[i]+i*10-500, i, 75);
      ellipse(xpos5[i]+=random(-2, 2), ypos5[i]+i*10-500, i, 75);
      
    }
  }
  fill(255, 100, 0);

  ellipse(width/2, height/2, a, 100);
  triangle(x, 180, 400, 300, 400, 250);
  triangle(x, 220, 400, 300, 400, 250);
  triangle(x, 250, 400, 300, 400, 250);
  triangle(b, 350, 400, 330, 400, 250);
  fill(0);
  ellipse(400, 295, c, 20);
  x=x+1;
  if (x > 400) {
    x = 300;
  }
  a=a-1;
  if (a < 0) {
    a= 100;
  }
  b=b-1;
  if (b < 400) {
    b = 500;
  }
  c=c-.20;
  if (c < 0) {
    c = 20;
  }
  // background(58, 61, 60);
}