function setup(){
    createCanvas(400,400);
}
function draw(){
    background(0);
    drawGoober(200, 200);
}

function drawGoober(var x, var y){
 if (keyPressed){
  if (key == ' '){
    noStroke();
    fill(0,0,255);
    ellipse(200,200,400,400);
    fill(255);
    ellipse(200,200,300,300);
  }}

    //left foot
    fill(0);
    stroke(255);
    rect(x-40,y+35,30,20);  
    //right foot
    rect(x+15,y+35,30,20);
    //head
    noStroke();
    fill(100);
    ellipse(x,y,50,100);
    //left eye
    fill(0);
    stroke(0);
    ellipse(x-10,y+ 10,5,5);
    // right eye
    noFill();
    ellipse(x+10,y+10,13,15);
     // tooth
    fill(255);
    triangle(x+2,y+25,x+15,y+25,x+5,y+40);
    //mouth
    stroke(0);
    line(x-15,y+24,x+18,y+24);
    
     //actiooooon
  
    if (keyPressed){
  if (key == ' '){
    fill(0,0,255); 
    ellipse(x+10,y+10,13,15);
    
  }
  }
    

}