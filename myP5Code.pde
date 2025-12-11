//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
  size(400, 400); 
  background(255,255,255,100);
}

//🟢Draw Procedure - Runs on Repeat
void draw(){
  background(255);

  stroke(0);
  strokeWeight(3);

  // left side of face
  fill(255, 80, 80);       // red side
  rect(50, 50, 150, 300);  // shape 1: rectangle

  // right side of face
  fill(50, 200, 120);      // green side
  rect(200, 50, 150, 300); // shape 2: rectangle

  // eyes
  fill(255, 230, 0);       // yellow
  ellipse(140, 150, 120, 80); // shape 3: ellipse
  ellipse(260, 150, 120, 80);

  fill(0, 150, 255);       // blue pupils
  ellipse(140, 150, 40, 40);
  ellipse(260, 150, 40, 40);

  // nose (simple shape)
  fill(255, 60, 120);
  rect(180, 150, 40, 120);

  // mouth (red lips)
  fill(200, 30, 60);
  ellipse(200, 280, 160, 60);

  // Arc highlight for lips
  noFill();
  stroke(255);
  arc(200, 285, 120, 40, 0, PI);
}

//🟡Extra FUN Features Ms. Hall Added
var fillR = 255;
var fillG = 0;
var fillB = 255;

//🟡Mouse Pressed Procedure - Runs When Mouse is Pressed on Canvas
void mousePressed(){
  fill(fillR,fillG,fillB);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 12, 12);
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  text(myText, mouseX + 15, mouseY);
  console.log(myText);
}

//🟡Key Pressed Procedure - Runs When Keyboard Key is Pressed
void keyPressed(){
  if(key == 'c' || key == 'C'){
    background(255,255,255,100);
  }

  if(key == 'r' || key == 'R'){
    fillR = random(100,255);
    fillG = 0;
    fillB = 0;
  }

  if(key == 'g' || key == 'G'){
    fillR = 0;
    fillG = random(100,255);
    fillB = 0;
  }
}

