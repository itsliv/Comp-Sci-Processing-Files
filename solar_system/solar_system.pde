Planets [] object = new Planets[8];

void setup() {
  size(800, 800);
  
  object[0] =  new Planets(70, 20, 10);
  object[1] =  new Planets(110, 12, 15);
  object[2] =  new Planets(150, 212, 30);
  object[3] =  new Planets(190, 99, 22);
  object[4] =  new Planets(230, 134, 18);
  object[5] =  new Planets(270, 300, 27);
  object[6] =  new Planets(310, 262, 31);
  object[7] =  new Planets(350, 145, 12);
}

void draw() {
  background(#aec6cf);
  translate(width/2, height/2);
    fill(255, 255, 0);
  ellipse(0, 0, 80, 80);

  for (int d = 0; d < 8; d ++){
  object[d].move();
  object[d].display();
  }
}