import ddf.minim.*;

Minim minim;
AudioOutput out;

PImage img;
int i =100;


String[] pentatonic = {"C3", "D3", "G3", "A4", "E4", "C4", "D4", "G4", "A5", "E5", "C5", "D5", "G5", "A6", "E6"};

String[] notes = pentatonic;

void setup() {
  size(1000, 1250);
  img = loadImage("renoir2.jpg");
  frameRate(8);
  minim = new Minim(this);
  out = minim.getLineOut();
  out.setTempo(100);
}

void draw() {
  img.loadPixels();
  image(img, 0, 0);


  float h = hue(img.pixels[i]);
  float s = saturation(img.pixels[i]);
  float b = brightness(img.pixels[i]);
  
  i += 30;
  if(i % 800 == 0){
    i+=(8000*4)
  }

  int note = int(map(h, 0, 255, 0, notes.length));
  // int note = int(map(h, 0, 255, 320, 500));
  float duration = map(b, 0, 255, .1, 5);

  out.pauseNotes();
  out.playNote(0.0, duration, notes[note]);
  //out.playNote(note);
  out.resumeNotes();

  float x = i % width;
  float y = int(i / width);

  fill(255, 0, 0);
  ellipse(x, y, 10, 10);
}