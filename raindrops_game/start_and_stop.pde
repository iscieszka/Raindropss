class Screen { //creates screen class
  int startx=width/2;
  int starty=height/2+200-40;
  Screen() {
  }
  void displayStart() {//start screen
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    fill(203, 89, 67);
    rect(startx, starty-200, 150, 50, 20, 20, 20, 20);//start button
    fill(304, 89, 51);
    textSize(20);
    text("Start", startx, starty-200);
    textSize(40);
    text("Don't Flood The World", width/2, height/2-222);
  }
  void startWork() {
    if (mouseY<starty-200+25 && mouseY>starty-200-25 && mouseX<startx+75 && mouseX>startx-75) {// if mouse is hovered over start it changes color
      fill(100, 60);
      rect(startx, starty-200, 150, 50, 20, 20, 20, 20);
    }
    if (mouseY<starty-200+25 && mouseY>starty-200-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {// if the button is pressed 1 is added to int start
      ellipse(startx, starty-200, 60, 60);
      start+=1;
    }
  }
  void choose() {//choose screen
    background(back);
    textAlign(CENTER, CENTER);
    textSize(30);
    fill(255, 100, 100);
    rect(startx, starty, 150, 50, 20, 20, 20, 20);//choose buttons
    rect(startx, starty-100, 150, 50, 20, 20, 20, 20);
    fill(210, 100, 100);
    text("CHOOSE YOUR DESTINY", width/2, height/2-100);
    textSize(20);
    text("Survival", startx, starty);
    text("Free Mode", startx, starty-100);
    //highlights buttons when hovered over
    if (mouseY<starty+25 && mouseY>starty-25 && mouseX<startx+75 && mouseX>startx-75) {
      fill(100, 60);
      rect(startx, starty, 150, 50, 20, 20, 20, 20);
    }
    if (mouseY<starty-100+25 && mouseY>starty-100-25 && mouseX<startx+75 && mouseX>startx-75) {
      fill(100, 60);
      rect(startx, starty-100, 150, 50, 20, 20, 20, 20);
    }

    if (mouseY<height/2-100+25 && mouseY>height/2-100-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {//secret button located where the "Choose Your Destiny" text is
      ellipse(startx, height/2-100, 60, 60);
      survival=false; 
      freemode=false;
      suddendeath=true;//sudden death mode starts
      life=1;//one life
      start=3;//start is now 3 game starts
    }
    if (mouseY<starty+25 && mouseY>starty-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {
      ellipse(startx, starty, 60, 60);
      survival=true; //survival mode starts
      freemode=false;
      suddendeath=false;
      life=10;//ten lives
      start=3;//start is now 3 game starts
    }
    if (mouseY<starty-100+25 && mouseY>starty-100-25 && mouseX<startx+75 && mouseX>startx-75 && mousePressed) {
      ellipse(startx, starty-100, 60, 60);
      freemode=true;//free mode starts
      survival=false;
      suddendeath=false;
      startTime=millis();//timer starts counting from this point for free mode
      life=999999;//many lives
      start=3;//start is now 3 game starts
    }
  }
  void displayStop() {//end game screen
    if (life<=0) {//tripped if lives are equal to 0 or below
      background(flood);//new background
      textAlign(CENTER);
      textSize(30);
      text("YOU FLOODED THE WORLD", width/2, height/2-170);//text
      fill(300,100,100);
      text("ESC to exit. \n Nothing else you can do now. \n Well,you can grab a bucket.", width/2, height/2+200);//funnier text
    }
  }
}

