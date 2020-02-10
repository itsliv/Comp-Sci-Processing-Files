void setup() {
  size(800, 600);
  background(0,50);
}

void draw() {
  //noFill();
  fill(0);
  //strokeWeight(3);
  stroke(255);
  ellipse(400, 300, 300, 550);
  fill(255);
  ellipse(300, 200, 100, 100); //left eye
  ellipse(500, 200, 100, 100); // right eye

  noStroke();
  fill(#FF1E05);
  ellipse(290, 190, 80, 80); //left pupil
  ellipse(510, 190, 80, 80); //right pupil

  stroke(255);
  strokeWeight(4);
  arc(400, 400, 200, 60, -8, PI+QUARTER_PI, OPEN); //mouth

//mouth fire
  noStroke();
  fill(#FF4A03);
  ellipse(400, 410, 190, 40);

  fill(#FF6105);
  ellipse(400, 420, 180, 40);

  fill(#FF7205);
  ellipse(400, 430, 190, 40);

  fill(#FF8205);
  ellipse(400, 440, 170, 40);

  fill(#FF9305);
  ellipse(400, 450, 160, 40);

  fill(#FFA805);
  ellipse(400, 460, 190, 40);

  fill(#FFB003);
  ellipse(400, 470, 160, 40);

  fill(#FFC505);
  ellipse(400, 480, 180, 40);

  fill(#FFCE05);
  ellipse(400, 490, 190, 40);

  fill(#FFF303);
  ellipse(400, 500, 160, 40);
}