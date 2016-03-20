//import the library  
import processing.sound.*;

float x, y, z;
color b1, b2;
PImage bg;
PImage witch;
PImage title;
PImage start;
PImage hand;
PImage fist;
PImage bottle1;
PImage bottle2;
PImage bottle3;
PImage bottle4;
PImage bottle5;
PImage bottle6;
PImage bottle7;
PImage next;
SoundFile ghost;

boolean clicked = false;
boolean clicky = false;
float angle = 1.0;
float anglee = 1.0;

int sequence = 0;





void setup() {
  size (1000, 799);
  //background(#F74DD0);
  bg = loadImage("background.jpg");
  witch = loadImage("witch2.gif");
  title = loadImage("title.png");
  start = loadImage("start.png");
  hand = loadImage("hand.png");
  fist = loadImage("fist.png");
  bottle1 = loadImage("1.png");
  bottle2 = loadImage("2.png");
  bottle3 = loadImage("3.png");
  bottle4 = loadImage("4.png");
  bottle5 = loadImage("5.png");
  bottle6 = loadImage("6.png");
  bottle7 = loadImage("7.png");
  next = loadImage("next.png");

  ghost = new SoundFile(this, "ghost.mp3");
  ghost.play();
}

void draw() {
  
  switch (sequence) {
  case 0:
    drawSeq01();
    break;
  case 1:
    drawSeq02();
    break;
  case 2:
    drawSeq03();
    break;
  }
  
}





void mouseClicked() {
  if (603 < mouseX && mouseX < 917 && 470 < mouseY && mouseY < 577) {
    //println(mouseX, mouseY);
    clicked = true;
  } else {
    clicked = false;
  }
  
  if (710 < mouseX && mouseX < 888 && 611 < mouseY && mouseY < 720) {
    //println(mouseX, mouseY);
    clicky = true;
  } else {
    clicky = false;
  }
}

void drawSeq01() {
  //the change in cursor when mouse move in the area
  if (603<mouseX && mouseX<917 && 470<mouseY&& mouseY<577) {
    cursor(fist);
  } else {
    cursor(hand);
  }
  
  
  
  
  //frameRate(60);
  imageMode(CORNER);
  
  background (bg);


  //put the witch in
  image(witch, x, y, 494, 300);
  
  //make the witch float in the sky
  x = 78 + sin(frameCount*0.1) * 20;
  y = 200+ sin(frameCount*0.2) * 20;

  //put in the title of the game
  image(title, 587, 23, 831, 440);

  //the bottoles
  image(bottle1, 23, 622, 100, 136);
  image(bottle2, 139, 625, 95, 137);
  //image(bottle3,257,600,144,152);
  //image(bottle4,473,600,100,151);
  image(bottle5, 254, 619, 107, 138);
  image(bottle7, 374, 623, 104, 139);

  
  
  //the start signal
  if (clicked == false) {
    image(start, 556, 433, 415, 330);
  } else {
    angle = angle - 0.05;

    if (angle <= 0) {
      angle = 0.0;
    }

    pushMatrix();
    pushStyle();

    translate(794, 573);
    rotate(angle*10); // radians, PI = 3.14 
    scale(angle);
    imageMode(CENTER);
    image(start, 0, 0, 531, 409);
    // -img.width/2, -img.height/2,
    //image(start, -531/2, -409/2, 531, 409);

    popStyle();
    popMatrix();
    
    //when this thing happens, the sequence move to the next one
    if (angle == 0) {
      sequence = 1;
    }
  }
}






void drawSeq02() {
  background (bg);
  

 println (mouseX, mouseY);
 
  //instruction (text)
  textSize(50);
  text("instruction",350,80);
  textSize (30);  
  text("There is a witch who lives in the forest. ",50,150);
  text("She makes beautiful girls with perfume for other monsters.",50,200);
  text("But she only has four kinds of perfume.",50,250);
  text("Now you need to help her.",50,300);
  text("Choose two correct perfume to make each girl:)",50,350);
  
  
   //the change in cursor when mouse move in the area
  if (710<mouseX && mouseX<888 && 611<mouseY&& mouseY<720) {
    cursor(fist);
  } else {
    cursor(hand);
  }
  
  
    //the next signal
  if (clicky == false) {
   image (next, 700,600,200,130);
  } else {
    anglee = anglee - 0.05;

    if (anglee <= 0) {
      anglee = 0.0;
    }

    pushMatrix();
    pushStyle();

    translate(800,665);
    rotate(anglee*10); // radians, PI = 3.14 
    scale(anglee);
    imageMode(CENTER);
    image(next, 0, 0, 200, 130);

    popStyle();
    popMatrix();
    
    //when this thing happens, the sequence move to the next one
   if (anglee == 0) {
    sequence = 2;
    }
  }
  }
  

void drawSeq03() {
  background(100,100,100);
}

void drawSeq04() {
}