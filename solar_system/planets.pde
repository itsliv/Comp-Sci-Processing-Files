class Planets{

  float ang, x, y, w, s;

  Planets(float nw, float nang, float ns){
    w = nw; 
    ang = nang;
    s = ns; 
  }

  void move() {
     ang += .03; 
     x = w*(cos(ang));
     y = w*(sin(ang));
  }

  void display() {
    noStroke();
    fill(#ffd1dc);
    ellipse(x, y, 20, 20);
  }
}