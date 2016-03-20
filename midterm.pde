import processing.serial.*;

Serial port;

PImage bg;
PImage girlPic;
//PImage[] girl;

int num;
int x = 800;
int[] pressure = new int[4];
int product;
int sequence;

void setup() {

  size(1000, 799);
  bg = loadImage("background.jpg");
  background(bg);

  port = new Serial(this, Serial.list()[1], 9600);
  port.bufferUntil('\n');

  randomGirl();

  //girl = new PImage[4];
  //for (int i = 0; i < girl.length; i++) {
  //  girl[i] = loadImage(i+".jpg");
  //}
}

void draw() {
  light();
  outcome();
}

void randomGirl() {
  int[] girls = {2, 3, 8, 12};
  int index = int(random(girls.length));
  num = girls[index];
  girlPic = loadImage(num+".jpg");
  imageMode(CENTER);
  image(girlPic, 500, 300);
}


void serialEvent(Serial port) {
  String data = port.readStringUntil('\n');
  data = trim(data);

  int sensor[] = int(split(data, ','));
  for (int i = 0; i < sensor.length; i++) {
    print("Sensor"+ i +":"+sensor[i]+"\t");
    pressure[i] = sensor[i];
  }
}



void light() {
  fill(71);
  noStroke();
  ellipse(400, 600, 80, 80);
  ellipse(600, 600, 80, 80);
  for (int i = 0; i < pressure.length; i++) {
    if (pressure[i] > x) {
      fill(255, 142, 3);
      noStroke();
      ellipse(400, 600, 80, 80);
      for (int j = 0; j < pressure.length; j++) {
        if (j == i) {
          continue;
        } else if (pressure[j] > x) {
          fill(255, 142, 3);
          noStroke();
          ellipse(600, 600, 80, 80);
          product = (i+1) * (j+1);
        }
      }
    }
  }
}

void outcome() {
  if (product == num) {
    sequence += 1;
  } else {
    sequence += 2;
  }
}