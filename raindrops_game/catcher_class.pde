class Catcher {
  PVector loc;
  int d;
  int score;
  Catcher() {
    d=20;
    score=0;
  }
  void display() {
    loc= new PVector(mouseX, height-height/20);
    ellipse(loc.x, loc.y, d, d);
    text("score "+score,0+width/30,20);
  }
  void hit(Raindrop rain) {
    if (loc.dist(rain.loc)<d/2+rain.d/2) {
      rain.loc.set(-width, 0-1000);
      rain.vel.set(0,0);
      score++;
    }
  }
}
