// Global Variables
int leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y;
int mouthLeftX, mouthLeftY, mouthRigthX, mouthRightY;
int measleDiameter;

void setup() {
  size(500, 500);
  //fullScreen();

  leftEyeX = width*2/8;
  leftEyeY = height*3/8;
  rightEyeX = width*6/8;
  rightEyeY = leftEyeY;
  eyeDiameter = width*1/4;
  nose1X = width*1/2;
  nose1Y = height*1/3;
  nose2X = width*2.5/4;
  nose2Y = height*2.5/4;
  nose3X = width*1.5/4;
  nose3Y = height*2.5/4;
  mouthLeftX = width*1/4;
  mouthLeftY = height*3/4;
  mouthRigthX = width*3/4;
  mouthRightY = mouthLeftY;
  measleDiameter = width*1/50; //Value = 10
  fill(#E9FF03);
  ellipse(width*1/2, height*1/2, width, height); // Face - Circle
 
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
  arc(width*2/4, 300, 200, 150, 0, HALF_PI);
  //Optional: ears, fill(),

rect(width*19/20, height*0,  width*1/20, height*1/20);

//noLoop();
}


void draw() {
  color red = #FF0303;
  fill(#DC00FF);
  noStroke(); //outline of measles
  ellipse(random(width*0.6/8, width*2/8), random(height*9/40, height*31/40), measleDiameter, measleDiameter);
  ellipse(random(width*2/8, width*3/8), random(height*4/40, height*36/40), measleDiameter, measleDiameter);
  ellipse(random(width*3/8, width*5/8), random(height*1/40, height*39/40), measleDiameter, measleDiameter);
  ellipse(random(width*5/8, width*6/8), random(height*3/40, height*37/40), measleDiameter, measleDiameter);
  ellipse(random(width*6/8, width*7/8), random(height*6/40, height*33/40), measleDiameter, measleDiameter);
  ellipse(random(width*7/8, width*7.5/8), random(height*9/40, height*29/40), measleDiameter, measleDiameter);
  fill(255); //default, gray scale
  stroke(1); //default

  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
  
}

//Listener
void mousePressed() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    exit();
  }
}
