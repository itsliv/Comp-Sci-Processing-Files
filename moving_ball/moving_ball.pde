float ang;
float m = 0;

void setup(){
  size(800,800);
  frameRate(80);
}

void draw(){
  strokeWeight(.1);
  
 // background();
  ang+= .1;
  m+= .1;
  translate(width/2, height/2);
  float x =m*cos(ang);
  float y =m*sin(ang);
  
  noStroke();
  fill (random(100,255), random(100,255),random(100,255));
  ellipse(x,y,20,20);
  
  //noFill();
  //stroke(255);
  //ellipse(0, 0,200,200);
}