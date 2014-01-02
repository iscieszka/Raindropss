class Catcher { //creates catcher class
  PVector loc, loc2;
  int d;
  int D;
  int score;
  Catcher() {
    d=30;
    D=50;
    score=0;
  }
  void display() {
    textAlign(CORNER);
    fill(221, 100, 100);
    loc2= new PVector(x, height-height/30);// constrains the catcher to a certain height and the x to the mouse position
    loc= new PVector(mouseX, height-height/5);// constrains another the catcher to a certain height and the x to the mouse position
    imageMode(CENTER);
    image(Catch, loc.x, loc.y, d, d);//image for catcher 1
    image(catcher, loc2.x, loc2.y, D, D);// image for catcher 2
    textSize(20);
    if (life<4) {
      fill(360, 100, 100);//if lives are below 4 fills score red
    }
    else {
      fill(120, 100, 100);
    }
    text("score "+score, 0+width/30, 20);//shows score in corner of screen
    if (x>width) {//makes second cather appear at other corner of screen when it goes off the other
      x=0;
    }
    if (x<0) {
      x=width;
    }
  }
  void hit(Raindrop rain) {
    /* checks if the rain has hit the catcher. 
     if it does, the raindrop gets moved off the screen and stopped from moving. 
     the score increases.*/
    if (loc.dist(rain.loc)<d/2+rain.d/2) {
      rain.loc.set(-width, 0-1000);
      rain.vel.set(0, 0);
      score++;
    }
    if (loc2.dist(rain.loc)<D/2+rain.d/2) {
      rain.loc.set(-width, 0-1000);
      rain.vel.set(0, 0);
      score++;
    }
  }
}

