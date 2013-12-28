class Survive {//creates Survive class
  int life;
  Survive(int s) {

    if (s==1) {
      life=10;//lives in suvival mode
    }
    if (s==2) {
      life=0;//lives in sudden death
    }
  }
  void go(Raindrop rain) {
    /* the fallowing code moves the raindrop away from the screen when it falls
     past the bottom of the screen.It also stops them from moving and takes away a life.
     */
    if (rain.loc.y>height) { 
      rain.loc.set(-width, 0-1000);
      rain.vel.set(0, 0);
      life--;
    }
  }
  void display() {
    textAlign(CORNER);
    fill(221, 100, 100);
    text("lives "+life, width-width/8, 20);// displays remaining lives at corner of screen
  }
}

