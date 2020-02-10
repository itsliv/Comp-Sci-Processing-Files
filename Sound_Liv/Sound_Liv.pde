//Idea_Emilio
//Animation_Charlie
//Interaction_Elijah
//Sound_Liv

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioSample laser, laser2;
AudioOutput out;

float ang = 0;
float rotate = .02;
float a = 20;
float b = 20;
float in = 5;
int redColor = int(in++);

void setup() {
  size(800, 600);
  background(200,10);
  frameRate(20);
}
void draw() {
  noStroke();
  minim = new Minim(this);
  
  laser = minim.loadSample("laser.wav", 512);
  laser2 = minim.loadSample("laser2.wav", 512);
  
  out = minim.getLineOut();
  out.setTempo( 80 );
  translate(width/2, height/2);

  //Makes the ellipses melt
  ang += .02;
  rotate(radians(ang));

  //Changes the color of the ellipses
  redColor += 1;

  //Draws the circle of ellipses
  for (int i = 0; i < 49; i++) {

    fill(redColor, 50, 50, 5);
    float x = width/2*cos(i*PI*1/5)+width/2;
    float y = width/-2*sin(i*PI*1/5)+height/2;
    float r1 = PI*i;
    rect(x, y, r1, 100);
  }
  ang += 1;
}

void keyPressed() {
  out.pauseNotes();
  if (key == ' ') {
    background(20,10);
   laser.trigger();
    
  }
  if (key == 'b') {
    out.pauseNotes();
    background(200,10);
    laser2.trigger();
  }
  out.resumeNotes();
}