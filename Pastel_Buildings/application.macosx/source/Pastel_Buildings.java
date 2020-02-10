import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Pastel_Buildings extends PApplet {


public void setup() {
  background(0xffd1dcff);
  
  frameRate(5);
}
public void draw() {
  issaGur(0,300, 225, 100);
  issaGur(250, 100, 75,300);
  issaGur(360,200,120,400);
  
 
}
public void issaGur(float bx, float by, float bw, float bh) {
  fill(100);
  noStroke();
  rect(bx, by, bw, bh);
  for (float x = bx + 5; x < bx+bw; x +=15) {
    for (float y = by + 5; y < height; y += 20) {
      issaBoi(x, y);
    }
  }
}

public void issaBoi(float x, float y) {
  fill(0xffdcffd1);
  rect(x, y, 5, 10);
  float randNum = random(20);
  if(randNum> 15) fill (0xffffd1dc);
  else fill(0xffdcffd1);
  rect(x,y,5,10);
}
  public void settings() {  size(600, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "Pastel_Buildings" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
