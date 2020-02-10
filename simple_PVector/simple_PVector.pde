PVector loc, vel, acc;
void setup(){
  size(400,400);
  loc = new PVector(0,0);
  vel = new PVector(5,0);
  acc = new PVector(0,10);
  frameRate(15);
  noStroke();
  
}

void draw(){
  fill(100,10);
  rect(0,0,width,height);
  
  vel.add(acc);
  loc.add(vel);
  
  fill(255);
  
  ellipse(loc.x,loc.y,10,10);
  
  //fill(100);
  //rect(0,150,width,50);
  //fill(255);
  //text("loc: "+loc, 50, height-10);
  //text("vel: "+vel, 250, height-10);
  //text("acc: "+acc, 450, height-10);
  
  if(loc.x>width) setup();
  if(loc.y>height) vel.y *=-1;
  
}