PImage Marilyn;
PImage beach;
int timer=0;

void setup(){
  size(1000,800);
  Marilyn=loadImage("Marilyn.png");
  beach=loadImage("beach.jpg");
  
  PFont font;
  font=loadFont("SansSerif-30.vlw");
  textFont(font);
}

void draw(){
  imageMode(CORNER);
  image(beach, 0,0,1000,800);
  image(Marilyn,600,260,450,600);
  fill(255);
  if (timer>5) {
      text("Hi everyone, this is Marilyn Monroe", 5, 50);
    }
    if (timer>15){
      text("She is known almost all over the world", 5, 85);
    }
    if (timer>20) {
      text("In 1999", 5, 117);
    }
    if (timer>25){
      text("she was selected as  ", 5, 150);
    }
    if (timer>30){
      text("one of the most great actresses in the world",5,183);
    }
    // update timer
    timer++;
  }