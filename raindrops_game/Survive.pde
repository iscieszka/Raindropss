class Survive {//creates Survive class
  Survive() {
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
    textSize(14);
    text("lives "+life, width-width/8, 20);// displays remaining lives at corner of screen
  }
}

