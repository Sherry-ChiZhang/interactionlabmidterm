PImage witch;
PImage house;
int x=0;
int y=0;

void setup(){
  size(800,600);
  house= loadImage("house.jpg");
  witch= loadImage("witch.png");
}

void draw(){
  
  imageMode(CORNER);
  image(house,0,0,800,600);
 if(x<200){
   x+=5;
   y+=5;
    image(witch,x++,y++,300,300);//move to the position 
  }if(x>=200){
    image(witch,200,200,300,300);
  }
  
  PFont font;
  font=loadFont("Serif-128.vlw");
  textFont(font);
  fill (0);
  text("You Lose",280,130);
  
  font=loadFont("Serif-48.vlw");
  textFont(font);
  fill (0);
  text("It seems that you are not ",100,170);
  text("familiar with women!",110,220);
  
 
}