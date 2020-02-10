//Idea - David
//Animation - Emilio
//Interaction - Charlie (I got help from the internet and learncreativecode's galley)
//Sound - Elijah
//Iteration - Liv

//Press F to needle drop and play music
//Press Space to stop music
//Click mouse to draw fire

//The fliter(BLUR) at the end of void flame is causing the lag, less blur = less lag
import ddf.minim.*;
boolean music;

ArrayList< Note> notes = new ArrayList< Note>();

Minim minim;
AudioPlayer file;
PFont font1;
PFont font2;
float x1 = 500;
float y1 = 200;
int bg = 10;
float b = 1;
float a = 5;
float ang = .1;

void setup() {
  font1 = loadFont("Trattatello-120.vlw");
  font2 = loadFont("Serif-50.vlw");
  minim = new Minim(this);
  file = minim.loadFile("GinsengSound.mp3", 512);

  pushMatrix();
  //Flame fire;
  colorMode(HSB);
  size(800, 600);
  background(bg);
  popMatrix();
  smooth();
}

void draw() {
  background(bg);
  translate(120, -10);
  smooth();
  flame();
  record();
  if (keyPressed) {
    if (key == 'f') {
      rotate(radians(15));
    }
  }
  
  entirearm();
  if (keyPressed) {
    if (key == 'f') {
      rotate(radians(-15));
      music = !music;
      if (music == true) {
        file.play();
      }
      else{
        file.pause();
      }
    }
  }
  //if (keyPressed) {
  //  if (key == ' ') {
  //    file.pause();
  //  }
  //}
  melt();
  obstruct();
  splat();
  //shappe();
  tex();

  drawNote();
  if (mousePressed)notes.add(new Note(mouseX, mouseY));
}


//Particle generator
void drawNote() {
  for (int i = 0; i <  notes.size(); i++) {
    Note not = notes.get(i);
    not.display();
    not.move();
    if (not.age <  0) notes.remove(i);
  }
}
void flame() {
  noStroke();
  fill(random(0, 50), 255, 180, 100);
  smooth();
  //pushMatrix();
  beginShape();
  vertex(228.0, 243.0);
  bezierVertex(228.0, 243.0, 229.0, 244.0, 228.0, 243.0);
  bezierVertex(227.0, 242.0, 195.0, 198.0, 195.0, 198.0);
  bezierVertex(195.0, 198.0, 163.0, 330.0, 222.0, 331.0);
  bezierVertex(281.0, 332.0, 278.0, 312.0, 282.0, 310.0);
  bezierVertex(286.0, 308.0, 290.0, 245.0, 289.0, 245.0);
  bezierVertex(288.0, 245.0, 277.0, 188.0, 277.0, 188.0);
  bezierVertex(277.0, 188.0, 259.0, 235.0, 259.0, 235.0);
  bezierVertex(259.0, 235.0, 243.0, 191.0, 243.0, 191.0);
  bezierVertex(243.0, 191.0, 228.0, 240.0, 228.0, 240.0);
  endShape();

  beginShape();
  vertex(305.0, 273.0);
  bezierVertex(305.0, 273.0, 305.0, 273.0, 305.0, 273.0);
  bezierVertex(305.0, 273.0, 249.0, 260.0, 284.0, 190.0);
  bezierVertex(319.0, 120.0, 318.0, 126.0, 312.0, 102.0);
  bezierVertex(306.0, 78.0, 330.0, 182.0, 325.0, 188.0);
  bezierVertex(320.0, 194.0, 370.0, 136.0, 372.0, 115.0);
  bezierVertex(374.0, 94.0, 350.0, 200.0, 362.0, 204.0);
  bezierVertex(374.0, 208.0, 391.0, 153.0, 393.0, 128.0);
  bezierVertex(395.0, 103.0, 411.0, 259.0, 398.0, 264.0);
  bezierVertex(385.0, 269.0, 307.0, 273.0, 307.0, 273.0);
  endShape();

  beginShape();
  vertex(181.0, 209.0);
  bezierVertex(181.0, 209.0, 189.0, 214.0, 181.0, 209.0);
  bezierVertex(173.0, 204.0, 143.0, 163.0, 158.0, 116.0);
  bezierVertex(173.0, 69.0, 173.0, 44.0, 171.0, 37.0);
  bezierVertex(169.0, 30.0, 174.0, 88.0, 181.0, 101.0);
  bezierVertex(188.0, 114.0, 182.0, 88.0, 184.0, 58.0);
  bezierVertex(186.0, 28.0, 185.0, 14.0, 194.0, 67.0);
  bezierVertex(203.0, 120.0, 217.0, 133.0, 211.0, 79.0);
  bezierVertex(205.0, 25.0, 207.0, 40.0, 225.0, 59.0);
  bezierVertex(243.0, 78.0, 222.0, 116.0, 222.0, 117.0);
  bezierVertex(222.0, 118.0, 240.0, 77.0, 241.0, 49.0);
  bezierVertex(242.0, 21.0, 237.0, 113.0, 238.0, 117.0);
  bezierVertex(239.0, 121.0, 255.0, 74.0, 256.0, 53.0);
  bezierVertex(257.0, 32.0, 256.0, 128.0, 262.0, 129.0);
  bezierVertex(268.0, 130.0, 249.0, 198.0, 235.0, 205.0);
  bezierVertex(221.0, 212.0, 179.0, 205.0, 179.0, 205.0);
  endShape();

  translate(120, -30);
  beginShape();
  vertex(228.0, 243.0);
  bezierVertex(228.0, 243.0, 229.0, 244.0, 228.0, 243.0);
  bezierVertex(227.0, 242.0, 195.0, 198.0, 195.0, 198.0);
  bezierVertex(195.0, 198.0, 163.0, 330.0, 222.0, 331.0);
  bezierVertex(281.0, 332.0, 278.0, 312.0, 282.0, 310.0);
  bezierVertex(286.0, 308.0, 290.0, 245.0, 289.0, 245.0);
  bezierVertex(288.0, 245.0, 277.0, 188.0, 277.0, 188.0);
  bezierVertex(277.0, 188.0, 259.0, 235.0, 259.0, 235.0);
  bezierVertex(259.0, 235.0, 243.0, 191.0, 243.0, 191.0);
  bezierVertex(243.0, 191.0, 228.0, 240.0, 228.0, 240.0);
  endShape();

  beginShape();
  vertex(305.0, 273.0);
  bezierVertex(305.0, 273.0, 305.0, 273.0, 305.0, 273.0);
  bezierVertex(305.0, 273.0, 249.0, 260.0, 284.0, 190.0);
  bezierVertex(319.0, 120.0, 318.0, 126.0, 312.0, 102.0);
  bezierVertex(306.0, 78.0, 330.0, 182.0, 325.0, 188.0);
  bezierVertex(320.0, 194.0, 370.0, 136.0, 372.0, 115.0);
  bezierVertex(374.0, 94.0, 350.0, 200.0, 362.0, 204.0);
  bezierVertex(374.0, 208.0, 391.0, 153.0, 393.0, 128.0);
  bezierVertex(395.0, 103.0, 411.0, 259.0, 398.0, 264.0);
  bezierVertex(385.0, 269.0, 307.0, 273.0, 307.0, 273.0);
  endShape();

  beginShape();
  vertex(181.0, 209.0);
  bezierVertex(181.0, 209.0, 189.0, 214.0, 181.0, 209.0);
  bezierVertex(173.0, 204.0, 143.0, 163.0, 158.0, 116.0);
  bezierVertex(173.0, 69.0, 173.0, 44.0, 171.0, 37.0);
  bezierVertex(169.0, 30.0, 174.0, 88.0, 181.0, 101.0);
  bezierVertex(188.0, 114.0, 182.0, 88.0, 184.0, 58.0);
  bezierVertex(186.0, 28.0, 185.0, 14.0, 194.0, 67.0);
  bezierVertex(203.0, 120.0, 217.0, 133.0, 211.0, 79.0);
  bezierVertex(205.0, 25.0, 207.0, 40.0, 225.0, 59.0);
  bezierVertex(243.0, 78.0, 222.0, 116.0, 222.0, 117.0);
  bezierVertex(222.0, 118.0, 240.0, 77.0, 241.0, 49.0);
  bezierVertex(242.0, 21.0, 237.0, 113.0, 238.0, 117.0);
  bezierVertex(239.0, 121.0, 255.0, 74.0, 256.0, 53.0);
  bezierVertex(257.0, 32.0, 256.0, 128.0, 262.0, 129.0);
  bezierVertex(268.0, 130.0, 249.0, 198.0, 235.0, 205.0);
  bezierVertex(221.0, 212.0, 179.0, 205.0, 179.0, 205.0);
  endShape();

  //filter(BLUR, b);
  //b = (random(1, 4));
}

void record() {
  translate(-240, 60);
  //RECORD
  rotate(radians(a));
  stroke(1);
  fill(56);
  while (x1>10) {
    ellipse(300, 200, x1, y1);
    x1 = x1 - 8;
    y1 = y1 - 4;
  }
  if (x1 < 10) {
    x1 = 500;
    y1 = 200;
  }
  fill(255, 255, 50);
  //noStroke();
  strokeWeight(5);
  stroke(255, 200, 40);
  ellipse(300, 200, 182, 39);
  noStroke();
  fill(255, 255, 35);
  ellipse(300, 200, 142, 19);
  fill(bg);
  ellipse(300, 200, 10, 4);
  rotate(radians(-15));

  //

  beginShape();
  vertex(271.99655, 334.44626);
  bezierVertex(271.99655, 334.44626, 272.9632, 336.1075, 271.99655, 334.44626);
  bezierVertex(271.0299, 332.785, 276.82974, 308.41992, 299.06256, 310.08118);
  bezierVertex(321.29535, 311.74243, 273.92984, 335.0, 273.92984, 335.0);
  endShape();

  beginShape();
  vertex(393.0, 368.4969);
  bezierVertex(393.0, 368.4969, 393.0, 368.4969, 393.0, 368.4969);
  bezierVertex(393.0, 368.4969, 433.0, 351.98755, 448.0, 356.39005);
  bezierVertex(463.0, 360.79254, 453.0, 374.0, 435.0, 374.0);
  bezierVertex(417.0, 374.0, 396.0, 368.4969, 396.0, 368.4969);
  endShape();

  beginShape();
  vertex(111.0, 352.0);
  bezierVertex(111.0, 352.0, 111.0, 352.0, 111.0, 352.0);
  bezierVertex(111.0, 352.0, 67.0, 335.0, 54.0, 345.0);
  bezierVertex(41.0, 355.0, 110.0, 358.0, 110.0, 356.0);
  endShape();

  beginShape();
  vertex(126.0, 433.0);
  bezierVertex(126.0, 433.0, 126.0, 433.0, 126.0, 433.0);
  bezierVertex(126.0, 433.0, 83.0, 428.0, 75.0, 445.0);
  bezierVertex(67.0, 462.0, 114.0, 455.0, 118.0, 450.0);
  bezierVertex(122.0, 445.0, 125.0, 433.0, 125.0, 433.0);
  endShape();
}

void arm() {
  //TONE ARM
  fill(25, 155, 30);
  rect(-50, 100, 210, 26);
  fill(25, 155, 60);
  rect(-50, 100, 210, 16);
  fill(25, 155, 90);
  rect(-50, 100, 210, 6);
}




void cartridge() {
  //CARTRIDGE/STYLUS
  rotate(radians(15));
  fill(200);
  triangle(210, 60, 230, 50, 225, 120);
}

void headshell() {
  //SHEADSHELL
  fill(40);
  rect(175, 50, 60, 50);
  fill(100);
  triangle(175, 50, 235, 50, 235, 85);
  rotate(radians(-15));
  fill(bg);
  rect(-50, 95, 240, -10);
  rect(-50, 127, 200, 24);
  rotate(radians(15));
  triangle(205, 49, 236, 49, 236, 70);
  fill(bg);
  triangle(236, 85, 236, 101, 230, 101);
  triangle(175, 75, 215, 100, 175, 101);
  fill(40);
  triangle(175, 70, 215, 85, 175, 90);
  fill(60);
  quad(235, 85, 230, 82, 215, 101, 230, 101);
}

void melt() {
  //melt
  fill(bg);
  //stroke(20,255,80);
  //strokeWeight(8);
  noStroke();
  rotate(radians(25));
  translate(300, -65);
  scale(.8);
  beginShape();
  vertex(439.0, 95.0);
  bezierVertex(439.0, 95.0, 439.0, 95.0, 439.0, 95.0);
  bezierVertex(439.0, 95.0, 369.0, -2.0, 283.0, 107.0);
  bezierVertex(197.0, 216.0, 215.0, 170.0, 148.0, 185.0);
  bezierVertex(81.0, 200.0, 59.0, 146.0, 81.0, 243.0);
  bezierVertex(103.0, 340.0, 30.0, 264.0, 23.0, 300.0);
  bezierVertex(16.0, 336.0, -3.0, 412.0, 119.0, 417.0);
  bezierVertex(241.0, 422.0, 282.0, 440.0, 334.0, 386.0);
  bezierVertex(386.0, 332.0, 390.0, 333.0, 415.0, 279.0);
  bezierVertex(440.0, 225.0, 438.0, 95.0, 438.0, 95.0);
  endShape();

  noStroke();
  scale(1.2);
  rotate(radians(3));
  translate(-100, -70);
  beginShape();
  vertex(11.0, 392.0);
}
void obstruct() {
  //OBSTRUCT

  //bezierVertex(11.0, 392.0, 11.0, 392.0, 11.0, 392.0);
  //bezierVertex(11.0, 392.0, 270.0, 321.0, 447.0, 48.0);
  //bezierVertex(624.0, -225.0, 459.0, 330.0, 460.0, 330.0);
  //bezierVertex(461.0, 330.0, 324.0, 452.0, 323.0, 453.0);
  //bezierVertex(322.0, 454.0, 173.0, 475.0, 141.0, 474.0);
  //bezierVertex(109.0, 473.0, 4.0, 452.0, 3.0, 444.0);
  //bezierVertex(2.0, 436.0, 10.0, 394.0, 10.0, 394.0);
  //endShape();

  translate(-200, 145);

  stroke(40);
  strokeWeight(1);
  fill(40);
  rotate(radians(-3));
  scale(0.6);
  translate(300, 400);
  bezier(260, 38, 226, 169, 362, 109, 254, 35);
  translate(60, 50);
  bezier(260, 38, 226, 169, 362, 109, 254, 35);
  scale(0.8);
  translate(140, -20);
  bezier(260, 38, 226, 169, 362, 109, 254, 35);
}

void splat() {
  //splat

  rotate(radians(-20));
  translate(0, 0);
  beginShape();
  vertex(310.0, 386.53128);
  bezierVertex(310.0, 386.53128, 308.0, 386.53128, 310.0, 386.53128);
  bezierVertex(312.0, 386.53128, 385.0, 391.69254, 379.0, 367.36087);
  bezierVertex(373.0, 343.02917, 339.0, 339.34256, 303.0, 351.87708);
  bezierVertex(267.0, 364.41156, 255.0, 351.13974, 259.0, 334.1813);
  bezierVertex(263.0, 317.22284, 201.0, 334.1813, 216.0, 345.24115);
  bezierVertex(231.0, 356.301, 202.0, 363.67426, 164.0, 351.13974);
  bezierVertex(126.0, 338.60522, 89.0, 388.74323, 134.0, 386.53128);
  bezierVertex(179.0, 384.3193, 208.0, 371.0475, 209.0, 382.84467);
  bezierVertex(210.0, 394.64185, 203.0, 406.439, 181.0, 409.3883);
  bezierVertex(159.0, 412.3376, 122.0, 418.23618, 142.0, 435.93195);
  bezierVertex(162.0, 453.62772, 224.0, 447.72913, 234.0, 434.4573);
  bezierVertex(244.0, 421.1855, 238.0, 390.2179, 262.0, 409.3883);
  bezierVertex(286.0, 428.55872, 351.0, 459.5263, 340.0, 423.39746);
  bezierVertex(329.0, 387.2686, 314.0, 416.76154, 311.0, 402.01508);
  bezierVertex(308.0, 387.2686, 309.0, 385.05664, 310.0, 385.05664);
  endShape();
}


void tex() {
  fill(255);
  translate(0, -400);
  textFont(font1);
  textSize(240);
  text("no.", 600+random(-1, 8), 400+random(-4, 4));
  textSize(100);
  text("without music, life would B", 300+random(-1, 8), 500+random(-4, 4));
  textFont(font2);
  textSize(72);
  text("b", 1230+random(-1, 8), 500+random(-4, 4));
  if (keyPressed) {
    textFont(font1);
    textSize(500);
    text("no.", 600+random(-10, 10), 400+random(-5, 5));
  }
}

void entirearm() {
  arm();
  cartridge();
  headshell();
}