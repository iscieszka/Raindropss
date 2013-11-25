class Catcher {
  PVector loc;
  int d;
  Catcher() {
    d=50;
  }
  void display() {
    loc= new PVector(mouseX, height-height/20);
    ellipse(loc.x, loc.y, d, d);
  }
}

