class Survive {
  int life;

  Survive() {
    index=1;
  }

  void go(Raindrop rain) {
    fill(210, 100, 100);
    if (rain.loc.y>height) {
      rain.loc.set(-width, 0-1000);
      life--;
      rain.vel.set(0, 0);
    }
  }
  void display() {
    text("lives "+life, width-width/8, 20);
  }

}
