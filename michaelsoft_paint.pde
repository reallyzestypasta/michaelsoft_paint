int red;
int green;
int blue;
PFont mono;
int strokesize;

void setup() {
frameRate(999999);
size(1000,1000);
background(255);
}

void mouseReleased()

{
  if (mouseButton == LEFT) 
  {
   if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150)
   background(255);
  }
     if (mouseX > 200 && mouseX < 300 && mouseY > 50 && mouseY < 150) {
     red = 255;
     green = 0;
     blue = 0;
  }
     if (mouseX > 350 && mouseX < 450 && mouseY > 50 && mouseY < 150) {
     red = 0;
     green = 255;
     blue = 0;
  }
    if (mouseX > 500 && mouseX < 600 && mouseY > 50 && mouseY < 150) {
    red = 0;
    green = 0;
    blue = 255;
  }
    if (mouseX > 650 && mouseX < 750 && mouseY > 50 && mouseY < 150) {
    red = 0;
    green = 0;
    blue = 0;
  }
    if (mouseX > 800 && mouseX < 900 && mouseY > 50 && mouseY < 150) {
    red = 255;
    green = 255;
    blue = 0;
  }
    if (mouseX > 943 && mouseX < 955 && mouseY > 75 && mouseY < 87) {
    
    strokesize = 1;
    }
    if (mouseX > 942 && mouseX < 957 && mouseY > 100 && mouseY < 115) {
      strokesize = 5;
    }
}

void draw() {

fill(255);
stroke(1);
strokeWeight(1);
rect(50,50,100,100);

{
  fill(0);
  textSize(20);
  text("Clear",60,80);
}
//red box
fill(255,0,0);
rect(200,50,100,100);

//green box
fill(0,255,0);
rect(350,50,100,100);

//blue box
fill(0,0,255);
rect(500,50,100,100);

//black box
fill(0);
rect(650,50,100,100);
//yellow box
fill(255,255,0);
rect(800,50,100,100);
//small
fill(255,255,255);
rect(943,75,12,12);
strokeWeight(1);
ellipse(949,81,2,2);
//medium
fill(255,255,255);
rect(942, 92,15,15);
ellipse(950, 100, 10,10);
//strokeWeight(1);
//point(20,20);
line(0,175,1000,175);
line(0,25,1000,25);

//CLEAR
if (keyPressed && key == 'k' || key == 'K')
{
background(255);
}

//DRAW
if (mouseButton == LEFT && mouseY > 175)
{
strokeWeight(strokesize);
stroke(red,green,blue);
point(mouseX,mouseY); 
}

//ERASER
if (mouseButton == RIGHT && mouseY > 175 )
{
strokeWeight(20);
stroke(255);
point(mouseX,mouseY); 
}

}
