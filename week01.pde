//float x = 0.0;
//boolean isMoving = true;

//void settings() {
//  size(400, 800, P2D);
//}

//void setup() {

//  background(255, 204, 0);
//  //noStroke();
//  noLoop();
//  //frameRate(30);
//}

//void draw() {
//  //
//  //ellipse(x, height/2, 80, 40);
//  //x += 2;
//  //if (x > width + 40) {
//  //  x = -40.0;  
//  //}

//  //noFill();
//  //beginShape();
//  //for (int i=0; i<20; i++) {
//  //   int y = i%2;
//  //   vertex(i*10, 50+y*10);
//  //}
//  //endShape();

//  translate(width/2, height/2);
//  leaf();
//}


//void leaf () {
//  beginShape();
//  vertex(100.0, -70.0);
//  bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
//  bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
//  endShape();
//}

//void mousePressed() {
//  if (isMoving) {
//    noLoop();
//    isMoving = false;
//  } else {
//    loop();
//    isMoving = true;
//  }
//}

void settings() {
  size(1200, 800, P2D);
}
void setup() {
  background(255, 200, 0);
  noLoop();
}
void draw() {
  plant(15, 0.4, 0.8);
}
void leaf() {
  beginShape();
  vertex(100.0, -70.0);
  bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
  bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
  endShape();
}
void plant(int numLeaves, float minLeafScale, float maxLeafScale) {
  line(width/2, 0, width/2, height); // the plant's stem
  int gap = height/numLeaves; // vertical spacing between leaves
  float angle = 0;
  for (int i=0; i<numLeaves; i++) {
    int x = width/2;
    int y = gap*i + (int)random(gap);
    float scale = random(minLeafScale, maxLeafScale);
    pushMatrix();
    // Complete the code!

    translate(x, y);
    rotate(angle);
    scale(scale);
 
    leaf();
    popMatrix();
    
    angle += PI; // alternate the side for each leaf
  }
}