// weirdotown
int value = 0;
PImage doghouse;
PImage weirdo;
float r;
float[] values = new float[1000];

void setup(){
    size(400,400);
    doghouse = loadImage("doghouse.png");
    imageMode(CENTER);
    weirdo = loadImage("weirdo.gif");
    imageMode(CENTER);
    
    for (int n = 0; n < 1000; n ++ ) {
  values[n] = random(0,10);
}

}

void draw(){
    background(value);
    image(doghouse, 100, 130);
    pushMatrix();
    translate(width/2, height/2);
    rotate(r);
    image(weirdo, 0, 0);
    popMatrix();
    r+=0.09;
}

void mousePressed() {
  if (value==0) {
    value = 255;
  }  else  {
    value = 0;
  }
}
