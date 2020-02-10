import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;

void setup() {
  size(512, 200);
  minim = new Minim(this);
  out = minim.getLineOut();
  out.setTempo( 80 );
}

void draw()
{
}

void keyPressed() {
  background(random(255), random(255), random(255));
  out.pauseNotes();
  if (key == 'a') {
    out.playNote( "Bb" );
  }
  out.pauseNotes();
  if (key == 's') {
    out.playNote( "F");
  }
  out.pauseNotes();
  if (key == 'd') {
    out.playNote( "F");
  }
  out.pauseNotes();
  if (key == 'f') {
    out.playNote( "Eb");
  }
  out.pauseNotes();
  if (key == 'g') {
    out.playNote( "F");
  }
  out.pauseNotes();
  if (key == 'h') {
    out.playNote( "Eb");
  }
  out.pauseNotes();
  if (key == 'j') {
    out.playNote( "Bbs");
  }
  out.pauseNotes();
  if (key == 'k') {
    out.playNote( "C6");
  }
  out.pauseNotes();
  if (key == 'l') {
    out.playNote( "D6");
  }

  out.pauseNotes();
  if (key == '1') {
    out.playNote( "C5");
    out.playNote( "A5");
    out.playNote( "E5");
  }

out.pauseNotes();
  if (key == '2') {
    out.playNote( "C5#");
    out.playNote( "A5");
    out.playNote( "G5#");
  }

  // the rest of the keys from s - ; should play notes

  // the number keys should play CHORDS (a combination of notes)
  out.resumeNotes();
}