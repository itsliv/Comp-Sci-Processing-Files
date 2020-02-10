
String[] compliments = {
  "You strike me as a bright intellectually active individual","Your hair looks radical today!", 
  "Sometimes I forget you're human because of how epic you are!", "You're so unimaginably sweet, I'm so glad I met you", "Y'all is LIT",
  "You might think you have to change, but I believe you're incredible just the way you are!", 
};
int randNum = 0;

void setup() {
  size(1400, 300);
}
void draw() {
  background(0);
  textAlign(CENTER);
  textSize(30);
  text(compliments[randNum], width/2, height/2);
}

void keyPressed(){
  randNum = int(random(compliments.length));
}