class Car extends GameObject {
  color c;
  PImage img;
 
  Car(float nx, float ny, float nspeed,PImage car) {
    super(nx, ny, nspeed);
    c = color(random(255), random(255), random(255));
    img = car;
    
  }
  void display() {
    image(img, x , y);
  }
}