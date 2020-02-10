float[] graphNums = {91, 89, 65, 54, 12, 15, 24, 23, 99};
void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  fill(255, 255, 0);
  drawPIE(graphNums);
  noLoop();
}

void drawPIE(float[] numbers) {
  float startAng = 0.0;
  float s = sum(numbers);
  for (int i = 0; i < numbers.length; i++) {
    fill(random(255), random(255), random(255));
    float arcAngle = (numbers[i]/s) * 2 *PI;
    arc(width/2, height/2, width, height, startAng, startAng + arcAngle);
    startAng += arcAngle;
  }
}

float sum(float[] numbers) {
  float output = 0.0;
  for (int i =0; i <numbers.length; i++) {
    output += numbers[i];
  }
  return output;
}