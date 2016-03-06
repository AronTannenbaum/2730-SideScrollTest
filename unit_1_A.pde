Float posX1 = 50.0;
Float velX1 = 3.0;
Float posY1 = 50.0;
Float velY1 = 3.0;

Float posX2 = 580.0;
Float velX2 = 2.0;
Float posY2 = 340.0;
Float velY2 = 2.0;

float r = 255;
float b = 255;
float g = 255;

void setup() {
  size(640,480);
}

void draw() {
  background(0);
  fill(r, b, g);
  if(posX1 > width || posX1 < 15) {
      //posX = 0.0;
      velX1 = -velX1;
  }
  if(posY1 > height || posY1 < 15) {
    velY1 = -velY1;
  }
  
  if(posX2 > width || posX2 < 20) {
    velX2 = -velX2;
  }
  if(posY2 > height || posY2 <20) {
     velY2 = -velY2;
  }
  
  if(dist(posX1, posY1, posX2, posY2) < 25) {
    //fill(random(255), random(255), random(255));
    r = random(255);
    //b = random(255);
    //g = random(255);
  }
  if(dist(posX1, posY1, posX2, posY2) < 50) {
    //r = random(255);
    b = random(255);
    //g = random(255);
  }
    if(dist(posX1, posY1, posX2, posY2) < 100) {
    //r = random(255);
    //b = random(255);
    g = random(255);
  }
  
  //fill(45, 120, 80);
  posX1 += velX1;
  posY1 += velY1;
  
  posX2 += velX2;
  posY2 += velY2;
  
  ellipse(posX1, posY1, 20, 20);
  ellipse(posX2, posY2, 30, 30);
}


