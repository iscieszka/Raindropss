class Raindrop {
  PVector loc;
  PVector vel;
  int d;

  Raindrop() {
    loc=new PVector(random(width), 0);
    vel=new PVector(0, random(1,5));
    d=5;
    colorMode(HSB, 360, 100, 100);
  }

  void display() {
    fill(200,100,100);
    ellipse(loc.x, loc.y, d, d);
  }
  void rain() {
    loc.add(vel);
  }
}

