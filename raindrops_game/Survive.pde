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
    if (life<4) {
      fill(360, 100, 100);//when lives are below three changes the color of them to red
    }
    else {
      fill(120, 100, 100);
    }
    textSize(20);
    text("lives "+life, width-width/5, 20);// displays remaining lives at corner of screen
  }
}

