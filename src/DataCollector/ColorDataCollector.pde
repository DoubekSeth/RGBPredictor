int r, g, b;
PrintWriter output;

void setup() {
 background(0);
 size(700, 500);
 noStroke();
 output = createWriter("TrainingData.txt");
 loops();
}

void draw() {
}

void mousePressed() {
 if (mouseX <= (width/4)+75 && mouseX >= (width/4)-75 && mouseY <= (height/2)+75 && mouseY >= (height/2)-75) {
  output.println("["+r+", " + g + ", " + b + ", " + 0 + "],");
 } else if(mouseX <= (3*width/4)+75 && mouseX >= (3*width/4)-75 && mouseY <= (height/2)+75 && mouseY >= (height/2)-75) {
  output.println("["+r+", " + g + ", " + b + ", " + 1 + "],");
 }
 loops();
}

void keyPressed() {
  output.flush();
  output.close();
}

void loops() {
  r = int(random(256));
  g = int(random(256));
  b = int(random(256));
  fill(r, g, b);
  ellipse(width/4, height/2, 150, 150);
  ellipse(3*width/4, height/2, 150, 150);
  textSize(20);
  fill(0);
  text("Text", width/4-20, height/2);
  fill(255);
  text("Text", (3*width/4)-20, height/2);
}
