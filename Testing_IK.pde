int bone1StartX;
int bone1StartY = 30;

int bone2StartX;
int bone2StartY;

float rotationBone;

void setup()
{
  size(600, 600);
  bone1StartX = width/2;
}

void draw()
{
  //println(bone1StartX);
  float mousePos = 0.001;
  
  background(200);
  
  bone1(0);
  bone2(0);
  //circle1();
  //rotate(PI/4);
  //atan2(0,1);
  //println();
}

// lala
void bone1(int yPos)
{
  translate(bone1StartX, bone1StartY);
  
  if(mouseY > 1 && mouseY < width/2)
  { 
    rotationBone = mouseY * 0.005;
    rotate(rotationBone);
  }
  else
  {
    rotate(rotationBone);
  }
  
  line(0,yPos, 200, 0);
  strokeWeight(5);
  
}

void bone2(int yPos)
{
  pushMatrix();
  translate(bone1StartX - 100, bone1StartY -30);
  
  //if(mouseY > 1 && mouseY < width/2)
  //{ 
  //  rotationBone = mouseY * 0.005;
  //  rotate(rotationBone);
  //}
  //else
  //{
  //  rotate(rotationBone);
  //}
  
  line(0,yPos, mouseX, mouseY);
  strokeWeight(5);
  popMatrix();
}

void circle1()
{
  //translate(width/2, height/2);
  circle(width/2, height/2, 20);
}
