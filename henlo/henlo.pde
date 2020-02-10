char code [] = {'g', 'e', 'n', 'd', 'e', 'r', ' ', 'f', 'r', 'e', 'e', ' ', 'z', 'o', 'n', 'e'};

void setup() {
  size (800, 400);
}

void draw () {
  textSize(40);
  background(0);
  stroke(255);
  for (int i = 0; i < code.length; i++) {
    text(code[i], i *50, 200);
    // char encoded = char(int(code[i]) + 65);
    // text(encoded, i *50, 200);
  }
}