
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
    
  //  line(loc.x, loc.y, ploc.x, ploc.y);
  }
}