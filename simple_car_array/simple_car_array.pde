Car ufo;

void setup(){
  size(600,400);
  ufo = new Car();
}

void draw(){
  background(255);
  ufo.move();
  ufo.display();
  
}