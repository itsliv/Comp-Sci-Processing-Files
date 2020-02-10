import ddf.minim.*;

Minim minim;
AudioSample kick1, kick2, kick3,kick4, kick5, kick6, kick7;
//  Coordinates for drum pads
int[] x = {100,200,300, 400, 500, 600, 700};
int[] y = {200,200,200,200, 200, 200, 200};

void setup()
{
  size(800, 400);

  minim = new Minim(this);

  kick1 = minim.loadSample("kick_01.wav", 512);
  kick2 = minim.loadSample("kick_02.wav", 512);
  kick3 = minim.loadSample("kick_03.wav", 512);
  kick4 = minim.loadSample("kick_04.wav", 512);
  kick5 = minim.loadSample("kick_08.wav", 512);
  kick6 = minim.loadSample("kick_10.wav", 512);
  kick7 = minim.loadSample("kick_420.wav", 512);
}
void draw()
{
  stroke(255);

  fill(200, 14, 182, 10);
  ellipse(x[0], y[0], 100, 100);

  fill(200, 182, 14, 10);
  ellipse(x[1], y[1], 100, 100);

  fill(14, 200, 182, 10);
  ellipse(x[2], y[2], 100, 100);
  
  fill(182,200,14,10);
  ellipse(x[3],y[3], 100, 100);
  
  fill(14,182,200,10);
  ellipse(x[4],y[4], 100, 100);
  
  fill(182,14,200,10);
  ellipse(x[5],y[5], 100, 100);
  
  fill(100,82,86,10);
  ellipse(x[6],y[6], 100, 100);
}

void mousePressed() {
  if (dist(mouseX, mouseY, x[0], y[0])<50) {
    fill(0);
    ellipse(x[0], y[0], 100, 100);
    kick1.trigger();
  }
  if (dist(mouseX, mouseY, x[1], y[1])<50) {
    fill(0);
    ellipse(x[1], y[1], 100, 100);
    kick2.trigger();
  }
  if (dist(mouseX, mouseY, x[2], y[2])<50) {
    fill(0);
    ellipse(x[2], y[2], 100, 100);
    kick3.trigger();
  }
    if (dist(mouseX, mouseY, x[3], y[3])<50) {
    fill(0);
    ellipse(x[3], y[3], 100, 100);
    kick4.trigger();
  }
  if (dist(mouseX, mouseY, x[4], y[4])<50) {
    fill(0);
    ellipse(x[4], y[4], 100, 100);
    kick5.trigger();
  }
  if (dist(mouseX, mouseY, x[5], y[5])<50) {
    fill(0);
    ellipse(x[5], y[5], 100, 100);
    kick6.trigger();
  }
  if (dist(mouseX, mouseY, x[6], y[6])<50) {
    fill(0);
    ellipse(x[6], y[6], 100, 100);
    kick7.trigger();
  }
}

void stop()
{
  // always close Minim audio classes when you are done with them
  kick1.close();
  kick2.close();
  kick3.close(); 
  kick4.close();
  kick5.close();
  kick6.close();
  kick7.close();
  minim.stop();
  super.stop();
}