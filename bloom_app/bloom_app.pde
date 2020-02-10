import ddf.minim.*;

Minim minim;
AudioOutput out;

String[] notes = {"C4", "D4", "E4", "F4", "G4", "A5", "B5", "C5", "D5", "E5", "F5", "G5", "A6", "A#6"};

ArrayList<Bloom> blooms;
void setup() {
  size(400, 400);
  background(0);
  blooms = new ArrayList<Bloom>();
  smooth();
  
  minim = new Minim(this);
  out = minim.getLineOut();
  out.setTempo( 80 );
}

void draw() {
  background(#ffd1dc);
  for (int i = 0; i < blooms.size(); i++) {
    Bloom bloom = blooms.get(i);

    bloom.update();
    bloom.display();
    if (bloom.s > 100)  blooms.remove(i);
  }
}

void mousePressed() {
  blooms.add(new Bloom(mouseX, mouseY));  
    int note = int(map(mouseX, 0, width, 0, notes.length));

  out.pauseNotes();
  out.playNote(notes[note]);
  //out.playNote(note);
  out.resumeNotes();
}