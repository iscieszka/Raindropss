class Timer {
  int oldTime=0;
  int index ;
}
void count() {
  if (millis()-oldTime>1000) {
    oldTime=millis();
    if (index<rain.length) {
      index++;
    }
  }
}
void hit(Raindrop rain) {
  if (loc.dist(rain.loc)<d/2+rain.d/2) {
    rain.loc.set(-width, 0-1000);
    rain.vel.set(0, 0);
    score++;
  }
}
}




