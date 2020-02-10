GameObject[] objects = new GameObject[34];
Frog livFrog;

float x, y;
int score;
PImage img;
PImage photo;
PImage frog;

boolean alive;

void setup () {
  size(900, 620);

  livFrog = new Frog(width/2, 590);

  //PImage road = loadImage("road.jpg");
  PImage car = loadImage("cur.png");
  PImage car2 = loadImage("cur 2.png");
  PImage lily = loadImage("lilypad.png");
  photo = loadImage("road 2.jpg");
  img = loadImage("blue 1.jpg");
  frog = loadImage("froggy.png");
  //cars
  //objects[0] = new Car(700, 580, 3, car);
  //objects[1] = new Car(500, 580, 3, car);
  //objects[2] = new Car(300, 580, 3, car);
  //objects[3] = new Car(100, 580, 3, car);

  objects[0] = new Car(300, 540, 2, car);
  objects[1] = new Car(700, 540, 2, car);
  objects[2] = new Car(500, 540, 2, car);
  objects[3] = new Car(100, 540, 2, car);

  objects[4] = new Car(700, 460, -3, car2);
  objects[5] = new Car(500, 460, -3, car2);
  objects[6] = new Car(300, 460, -3, car2);
  objects[7] = new Car(100, 460, -3, car2);

  objects[8] = new Car(700, 410, -1, car2);
  objects[9] = new Car(300, 410, -1, car2);

  //lilypads
  objects[10] = new Lily(900, 360, 3, lily);
  objects[11] = new Lily(600, 360, 3, lily);
  objects[12] = new Lily(300, 360, 3, lily);
  objects[13] = new Lily(0, 360, 3, lily);

  objects[14] = new Lily(900, 315, -2, lily); 
  objects[15] = new Lily(600, 315, -2, lily);
  objects[16] = new Lily(300, 315, -2, lily);
  objects[17] = new Lily(0, 315, -2, lily);

  objects[18] = new Lily(900, 270, 5, lily);
  objects[19] = new Lily(600, 270, 5, lily);
  objects[20] = new Lily(300, 270, 5, lily);
  objects[21] = new Lily(0, 270, 5, lily);

  objects[22] = new Lily(900, 225, -6, lily);
  objects[23] = new Lily(600, 225, -6, lily);
  objects[24] = new Lily(300, 225, -6, lily);
  objects[25] = new Lily(0, 225, -6, lily);
  
  objects[26] = new Lily(900, 180, 3, lily);
  objects[27] = new Lily(600, 180, 3, lily);
  objects[28] = new Lily(300, 180, 3, lily);
  objects[29] = new Lily(0, 180, 3, lily);
  
  objects[30] = new Lily(900, 135, -4, lily);
  objects[31] = new Lily(600, 135, -4, lily);
  objects[32] = new Lily(300, 135, -4, lily);
  objects[33] = new Lily(0, 135, -4, lily);
}


void draw() {
  background(255);
  scoreboard();
  image(frog, width/2, 580);
  image(img, 0, 0);
  image(photo, -7, 411);
  //keyPressed();
  for (int i = 0; i<34; i++) {
    objects[i].display();
    objects[i].move();
  }
  if (livFrog.y <120) {
    alive = true;
    textSize(100);
    fill(255, 0, 0);
    text("YOU WON!", 300, height/2);
    score +=1;
  }
  fill(255);
  rect(-10, 0, 950, 140);
  livFrog.display();
    carHitTest();
  if (livFrog.y>400 && livFrog.y<800) {
  }else lilypadHitTest();

  if (alive == false) {
    livFrog.y = 590;
    livFrog.x = width/2;
    textSize(100);
    text("YOU LOSE!", 300, height/2);
    fill(255, 0, 0);
  }
}


void keyPressed() {
  if (key == 'a') livFrog.x -= 45;
  if (key == 'd') livFrog.x += 45;
  if (key == 'w') livFrog.y -= 45;
  if (key == 's') livFrog.y += 45;
}

void carHitTest() {
  alive = true;
  for (int i =0; i <11; i++) {
    if (objects[i].hitTest(livFrog.x, livFrog.y)) {
      alive = false;
      
      break;
    }
  }
}

void lilypadHitTest() {
  alive = false; 
  for (int i = 10; i<34; i++) {
    if (objects[i].hitTest(livFrog.x, livFrog.y)) {
      alive = true;
      livFrog.x += objects[i].speed;
      
      break;
    }
  }
}

void scoreboard() {
  if (livFrog.y<70);
  score+= 1;
  text(score, 50, 50);
  fill(255, 0, 0);
}