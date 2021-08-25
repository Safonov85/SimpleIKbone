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
  float mousePos = 0.001;
  
  background(200);
  //circle1();
  bone1();
  
  //rotate(PI/4);
  //atan2(0,1);
  //println();
}

void bone1()
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
  
  line(0,0, 200, 0);
  strokeWeight(5);
}

void circle1()
{
  //translate(width/2, height/2);
  circle(width/2, height/2, 20);
}
