Bird b;
PVector start = new PVector(100,300);
float mouseX1, mouseY1;
 
 void setup(){
   size(1000,400);
   b = new Bird();
 }
 
 
 void draw(){
   background(100);
   fill(0,255,0);
   rect(0,300, width, 100);
   
   if (mousePressed){
     ellipse(mouseX1, mouseY1, 5, 5);
     ellipse(mouseX, mouseY, 5, 5);
     line(mouseX1, mouseY1, mouseX, mouseY);
   }
 
 
 b.move();
 b.display();
 }
 
 void mousePressed(){
   mouseX1 = mouseX;
   mouseY1 = mouseY;
 }
 
 void mouseReleased(){
   b.vel.x = (mouseX1 - mouseX)/10;
   b.vel.y = (mouseY1 - mouseY)/10;
 }