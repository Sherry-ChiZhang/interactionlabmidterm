PImage  woman;
int timer=0;

void setup(){
  size(1000,800);
  woman=loadImage("mysterious woman.jpg");
  
  
}

void draw(){
  imageMode(CORNER);
  image(woman, 0,0,1000,800);
  
  PFont font;
  font=loadFont("SansSerif-30.vlw");
  textFont(font);
  fill(255);
  if (timer>5) {
      text("Hi everyone, this is me", 5, 50);
    }
    if (timer>15){
      text("One of the most mysteriou women", 5, 85);
    }
    if (timer>20) {
      text("in the world", 5, 117);
    }
    if (timer>25){
      text("Do you know what's my name", 5, 150);
    }
    
    if (timer>30){
      font=loadFont("SansSerif-70.vlw");
      textFont(font);
      fill(255);
      text("Guess!",5,220);
    }
    // update timer
    timer++;
  }