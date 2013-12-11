class Raindrop {//creates raindrop class
  PVector loc;
  PVector vel;
  int d;

  Raindrop() {
    loc=new PVector(random(width), 0);//inputs the starting location of the raindrop
    vel=new PVector(0, random(1, 5));//inputs the velocity of the raindrop
    d=5;//diameter of raindrop
    colorMode(HSB, 360, 100, 100);
  }

  void display() {//displays raindrop
    fill(200, 100, 100);
    ellipse(loc.x, loc.y, d, d);
  }
  void rain() {//makes the raindrops fall
    loc.add(vel);
  }
}
