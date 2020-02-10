class StoneArch {
  PVector loc;
  
  //float x,y,z;
  //Arch(float nx, float nz){
  // nx = x;
  // nz = z;
  //}
  
  StoneArch(float x, float y, float z){
    loc = new PVector(x,y,z);
  }

 void render() {
  pushMatrix();
  translate(loc.x,loc.y,loc.z);
  translate(-150,0,0);
  box(100,300,100); //left leg
  
  translate(300,0,0);
  box(100,300,100); // right leg
  
  translate(-150,-210,0);
  box(420,100,100); // top bit
  popMatrix();
 }
 
 }