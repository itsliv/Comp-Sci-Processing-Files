var functionArrow = Arrow();
function setup() {
createCanvas(windowWidth, windowHeight); 
}


function draw() {
  background(255);
  Arrow()
  for (var i=Arrow; i < 500; i+=5); { //loop through to display the triangles//
  }

  function Arrow() {
  beginShape();
  vertex(180,82);
  vertex(207,36);
  vertex(214,63);
  vertex(407,11);
  vertex(412,30);
  vertex(219,82);
  vertex(223,109);
  endShape(CLOSE);

}
}