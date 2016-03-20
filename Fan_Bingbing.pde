PImage Bingbing;
int timer=0;

void setup(){
  size(1000,800);
  Bingbing=loadImage("Fan Bingbing.jpg");
  
  PFont font;
  font=loadFont("SansSerif-25.vlw");
  textFont(font);
}

void draw(){
  imageMode(CORNER);
  image(Bingbing, 0,0,1000,800);
  fill(255);
  if (timer>5) {
      text("Hi everyone, I am Fan Bingbing", 5, 50);
    }
    if (timer>15){
      text("A famous movie star in China", 5, 78);
    }
    if (timer>20) {
      text("I have acted more than 30 movies", 5, 98);
    }
    if (timer>25){
      text("Come to the cinema and see my movie!", 5, 119);
    }
    // update timer
    timer++;
  }