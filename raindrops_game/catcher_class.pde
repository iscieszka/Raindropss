class Catcher { //creates catcher class
  PVector loc;
  int d;
  int score;
  Catcher() {
    d=20;
    score=0;
  }
  void display() {
    textAlign(CORNER);
    fill(221,100,100);
    loc= new PVector(mouseX, height-height/20);// constrains the catcher to a certain height and the x to the mouse position
    ellipse(loc.x, loc.y, d, d);// creates the ellipse that is the catcher
    text("score "+score,0+width/30,20);//shows score in corner of screen
  }
  void hit(Raindrop rain) {
    /* checks if the rain has hit the catcher. 
    if it does, the raindrop gets moved off the screen and stopped from moving. 
    the score increases.*/
    if (loc.dist(rain.loc)<d/2+rain.d/2) {
      rain.loc.set(-width, 0-1000);
      rain.vel.set(0,0);
      score++;
    }
  }
}
