class Note{
  float x5,y5;
  float mx,my;
  float s;
  int age;
  
  Note(float nX, float nY){
    x5 = nX;
    y5 = nY;
    mx = random(-2,2);
    my = random(-7,-3);
    s = random(10,60);
    age = 200;
  }
  void display(){
    noStroke();
    age--;
    fill(random(0, 50), 255, 180, 100);
    ellipse(x5,y5,s,s);
  }
  void move(){
    x5 += mx;
    y5 += my;
    if(x5 > width || x5 <  0);
    if(y5 > height || y5 <  0);
  }
}