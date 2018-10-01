PImage tortoise;
PImage hare;
int tortY = 50;
int hareY = 50;



void setup()
{
  rectMode(CENTER);
  textSize(25);
 frameRate(1000);
  size(500,500);
  tortoise = loadImage("tortoise.jpg");
  hare = loadImage("hare.png");
}

void draw()
{
  fill(255);
   background(0);
   
   fill(0);
  
  image(tortoise,40,tortY,75,75);
  fill(255);
  image(hare,360,hareY,75,75);
  if(tortY >= 500 && hareY < 500)
  {
    text("tortoise wins",175,250);
    rect(250,280,140,60);
    fill(0);
     text("Reset", 220,285);
  }
  else if(hareY >= 500 && tortY < 500)
  {
    text("hare wins",175,250);
    rect(250,280,140,60);
    fill(0);
     text("Reset", 220,285);  
  }
  
}

void keyPressed()
{
  if(key == 'a')
  {
   tortY = tortY+10;
  }
  if(key == 'l')
  {
    hareY = hareY+10;
  }
if(key == 'r')
  {
  tortY = 50;
  hareY = 50;
  }
  
  
}

void mouseClicked()
{
  //rect(180,250,140,60);
  if (mouseX > 180 && mouseX < 320 && mouseY > 220 && mouseY < 280)
  {
    tortY = 50;
    hareY = 50;
  }
  
  
}  
