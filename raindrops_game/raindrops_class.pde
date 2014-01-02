class Raindrop {//creates raindrop class
  PVector loc;
  PVector vel;
  int d;

  Raindrop() {
    loc=new PVector(random(width), 0);//inputs the starting location of the raindrop
    vel=new PVector(0, random(2, 4));//inputs the velocity of the raindrop
    d=10;//diameter of raindrop
    colorMode(HSB, 360, 100, 100);
  }

  void display() {//displays raindrop
    if (suddendeath==true) {
      image(blood, loc.x, loc.y, d+10, d+10);//uses image of blood drops instead of rain if the sudden death mode is enabled
      fill(360,100,100);
    }
    else {
      image(raindrop, loc.x, loc.y, d+10, d+10);// use image of raindrops
    }
  }
  void rain() {//makes the raindrops fall
    loc.add(vel);
  }
}

