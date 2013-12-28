class Screen { //creates screen class
  int startx=width/2;
  int starty=height/2+200-40;
  Screen() {
  }
  void displayStart() {
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    fill(203, 89, 67);
    rect(startx, starty-200, 150, 50, 20, 20, 20, 20);
    fill(304, 89, 51);
    text("Start", startx, starty-200);
  }
  void startWork() {
    if (mouseY<starty-200+25 && mouseY>starty-200-25 && mouseX<startx+75 && mouseX>startx-75) {
      fill(100, 60);
      rect(startx, starty-200, 150, 50, 20, 20, 20, 20);
    }
    if (mouseY<starty-200+25 && mouseY>starty-200-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {
      ellipse(startx, starty-200, 60, 60);
      start+=1;
    }
  }
  void choose() {
    background(183,100,100);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("CHOOSE YOUR DESTINY", width/2, height/2-100);
    rect(startx, starty, 150, 50, 20, 20, 20, 20);
    rect(startx, starty-100, 150, 50, 20, 20, 20, 20);
    if (mouseY<starty+25 && mouseY>starty-25 && mouseX<startx+75 && mouseX>startx-75) {
      fill(100, 60);
      rect(startx, starty, 150, 50, 20, 20, 20, 20);
    }
    if (mouseY<starty-100+25 && mouseY>starty-100-25 && mouseX<startx+75 && mouseX>startx-75) {
      fill(100, 60);
      rect(startx, starty-100, 150, 50, 20, 20, 20, 20);
    }

    if (mouseY<height/2-100+25 && mouseY>height/2-100-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {
      ellipse(startx, height/2-100, 60, 60);
      survival=false; 
      freemode=false;
      suddendeath=true;
    }
    if (mouseY<starty+25 && mouseY>starty-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {
      ellipse(startx, starty, 60, 60);
      survival=true; 
      freemode=false;
      suddendeath=false;
    }
    if (mouseY<starty-100+25 && mouseY>starty-100-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {
      ellipse(startx, starty-100, 60, 60);
      freemode=true;
      survival=false;
      suddendeath=false;
    }
  }
  void displayStop() {
  }
}
