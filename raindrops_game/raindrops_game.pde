int index ;
Screen screen;
Timer t;
Survive s;
Raindrop[] rain= new Raindrop[10000]; // creates array of raindrops
Catcher c;
int mode;
int start;
boolean survival, suddendeath, freemode;
void setup() {
  size(500, 750);
  index=1;
  start=1;
  survival=false;//survival mode(needs work)
  suddendeath=false;//sudden death mode(needs work)
  freemode=false;//free mode (needs work)
  t=new Timer();//define timer
  c=new Catcher(); //define catcher
  screen= new Screen();
  for (int i=0;i<rain.length;i++) {
    rain[i]=new Raindrop(); //define each raindrop
  }
}
void draw() {
  colorMode(HSB, 360, 100, 100);
  background(185, 100, 100);
  screen.displayStart();
  screen.startWork();
  if (start==2) {
    s= new Survive(mode); //define survival mode(will be important later on as i work on game)
    if (survival==true) {
      mode=1;
      s.display(); //shows lives left
    }
    if (suddendeath=true) {
      mode=2;
      s.display(); //shows lives left
    }
    if (freemode==true) {
      text(millis()/1000, width/2, 20);
    }

    c.display(); //displays catcher
    t.count(); //counts the time and adds new raindrops after a certain interval
    for (int i=0;i<index;i++) {
      rain[i].display();//displays raindrops
      rain[i].rain();//makes raindrops fall
      c.hit(rain[i]);//checks if raindrop hit catcher
      s.go(rain[i]);//checks lives for survival mode}
    }
  }
}

