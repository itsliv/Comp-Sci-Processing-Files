float[] graphy = {89, 102, 34, 90, 82, 78, 91, 89, 65, 54, 99};

void setup() {
  size(400, 200);
}

void draw() {
  background(255);
  DaGraph(graphy);
  noLoop();
}

void DaGraph(float[] numbers) {
  float barWidth=width/numbers.length;
  for (int i = 0; i < numbers.length; i++) {
    float x = i * barWidth;
    float y = height-numbers[i];
    //pick rando color
    fill(random(255),random(255),random(255));
    rect(x,y, barWidth, numbers[i]);
  }
}
    