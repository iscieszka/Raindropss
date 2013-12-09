class Catcher {
  PVector loc;
  int d;
  Catcher() {
    d=20;
  }
  void display() {
    loc= new PVector(mouseX, height-height/20);
    ellipse(loc.x, loc.y, d, d);
  }
  void hit(Raindrop rain) {
    if (loc.dist(rain.loc)<d/2+rain.d/2) {
      rain.loc.set(-width, height*10);
    }
  }
}
