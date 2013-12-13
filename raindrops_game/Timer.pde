class Timer {// creates timer class
  int oldTime=0;
  Timer() {
  }
  void count() {
    /* this code counts the time from the beginning of the program and after a certain interval
     it restarts itself by making oldtime equal to the time. It also increases the index if it is
     lower than the amount of raindrops in the array */
    if (millis()-oldTime>1000) {
      oldTime=millis();
      if (index<rain.length) {
        index++;
      }
    }
  }
}

