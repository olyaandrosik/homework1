// weirdotown
int value = 0;
PImage doghouse;
PImage weirdo;
float r;
//int cols = width;
//int rows = height;
// Declare 2D array
//int[][] myArray = new int[cols][rows];
//int j;


void setup(){
    size(800,800);
    doghouse = loadImage("doghouse.png");
    imageMode(CENTER);
    weirdo = loadImage("weirdo.gif");
    imageMode(CENTER);
    
 /*       for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    stroke(myArray[i][j]);
    point(i,j);
  }
}*/
    


void draw(){
    background(value);
    image(doghouse, 100, 130);
    pushMatrix();
    translate(width/2, height/2);
    rotate(r);
    image(weirdo, 0, 0);
    popMatrix();
    r+=0.09;
   
/*   for (int i = 0; i < cols; i++) {
  for (int j = 0; j < rows; j++) {
    myArray[i][j] = int(random(255));
  }

} */
    
    
}

void mousePressed() {
  if (value==0) {
    value = 255;
  }  else  {
    value = 0;
  }
}
