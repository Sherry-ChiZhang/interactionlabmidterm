PImage Hermine;
PImage talking;
int x=1000;
int y=-5;
int timer=0;
//SoundFile player;

void setup() {
  size(1000, 800);
  //player = minim.loadFile("Harry Potter", 2048);
  //player.play();
  
  Hermine =loadImage("Hermine.jpg");
  talking =loadImage("talking.png");

  PFont font;
  font=loadFont("SansSerif-25.vlw");
  textFont(font);
  
 // harry=new SoundFile(this, "Harry Potter.mp3");
  //harry.play();
}

void draw() {
  imageMode(CORNER);
  image(Hermine, 0, 0, 1000, 800);
  image(talking, x, y, 700, 300);
  if (x>420) {
    x-=50;
    image(talking, x--, y, 500, 300);
  } else {
    fill (0);
    text("Hi everyone, I am Emma Watson!", 545, 100);
    if (timer>5) {
      text("The brave and smart Harry Potter Girl.", 525, 125);
    }
    if (timer>15){
      text("In 2015, I gave a \"He for She\" speech in UN,", 485, 150);
    }
    if (timer>20) {
      text("Want to know more?", 545, 175);
    }
    if (timer>25){
      text("Join us!", 545, 200);
    }
    // update timer
    timer++;
  }
}