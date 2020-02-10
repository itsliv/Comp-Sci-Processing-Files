class Bird{
  PVector loc, vel;
  PImage img;
  Bird(){
    loc = new PVector(100,300);
    img = loadImage("angrybird.png");
    vel = new PVector();
  }
  
  void display(){
    image(img, loc.x, loc.y);
  }
  
  void move(){
    //move
    loc.add(vel);
    vel.mult(.99);
    vel.y +=.1;
    
    if (loc.x > width){
      loc = start.get();
      vel =new PVector();
    }
    //If you hit the ground, bounce, and slow your velocity.
    if (loc.y >300){
      loc.y = 300;
      vel.mult(.95);
    }
  }
}
    