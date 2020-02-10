float ang,x,y;
float radius = 100;
float d = 1;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  translate(width/2, height/2);
  strokeWeight(3);
   x =radius*cos(ang);
   y =radius*sin(ang);
  ang +=0.1*d;
  line(0,0,x,y);
  if(ang > 0|| ang<-PI){
    d*= -1;
  }
  
}