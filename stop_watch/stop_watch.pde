//load font
PFont theFont;
float seconds;
float start;
float last;
boolean stopIt = true; 

// start / continue button
  // start / continue 
// stop button
  // stops at current number
// reset button
  // reset function
  
void setup() {
  size(600, 600);
  theFont = loadFont("AmericanTypewriter-Light-16.vlw");
  start = millis();  
}
  
void draw() {  
  clear();

  if (!stopIt) {
    seconds = millis() - start;
    seconds = seconds / 1000;
  }
  text(seconds, 275, 230);
  
  startButton();
  resetButton();
  stopButton();
  
  
  
  
  
   
}
  
void startButton () {
  int startX = 275;
  int startY = 350;
  int startW = 50;
  int startH = 50;
  rect(startX, startY, startW, startH);
   text("START", startX, startY);
   fill(0, 0, 255);
    
  
  
  if(mouseX > startX && mouseX < startX + startW && mouseY > startY && mouseY < startY + startH && mousePressed) {
    stopIt = false; 
   
  }

  
  
}


void resetButton () {
int resetX = 190;
int resetY = 350;
int resetW = 50;
int resetH = 50;
rect(resetX, resetY, resetW, resetH);
 text("RESET", resetX, resetY);
 fill(255, 0, 0);
 

if(mouseX > resetX && mouseX < resetX + resetW && mouseY > resetY && mouseY < resetY + resetH && mousePressed) {
 start = millis();


 
}
  
}

void stopButton () {
int stopX = 350;
int stopY = 350;
int stopW = 50;
int stopH = 50;
rect(stopX, stopY, stopW, stopH);
text("STOP", stopX, stopY);
 fill(0, 255, 0);
 

if(mouseX > stopX && mouseX < stopX + stopW && mouseY > stopY && mouseY < stopY + stopH && mousePressed) {
  stopIt = true; 
 
}
  
  
}


