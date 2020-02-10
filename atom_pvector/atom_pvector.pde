Atom [] atoms = new Atom[17];

void setup() {
  size(800, 600);
  for (int i = 0; i <atoms.length; i++) {
    atoms[i] = new Atom();
  }
  colorMode(HSB);
  background(#aec6cf);
  mouseX = width/2;
  mouseY = height/2;
}


void draw() {
  background(#aec6cf);
  fill(10, 10);
  noStroke();
  rect(0, 0, width, height);
  for (int i = 0; i< atoms.length; i++) {
    atoms[i].move();
    atoms[i].render();
}
}
class Atom {
  PVector vel, loc, acc;

  Atom() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void move() {
    
    float accX = (mouseX - loc.x);
    float accY = (mouseY - loc.y);
    acc = new PVector(accX, accY);
    acc.limit(.5);
    
    vel.add(acc);
    vel.limit(8);
    loc.add(vel);
    
    if (abs(accX) < 2 && abs (accY) < 2 ){
     // resetLocToEdge();
    loc = new PVector(random(width), random(height));
    }
    //ploc = loc.get();
  }
  
  void render(){
    fill(vel.mag()*30, 150, 400);
    strokeWeight(5);
    ellipse(loc.x, loc.y, 5, 5);
    
    //line(loc.x, loc.y, ploc.x, ploc.y);
  }
}