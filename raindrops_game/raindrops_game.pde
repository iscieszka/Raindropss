int index ;
int life;
int x;
int startTime;
Screen screen;
Timer t;
Survive s;
Raindrop[] rain= new Raindrop[10000]; // creates array of raindrops
Catcher c;
int mode;
int start;
boolean survival, suddendeath, freemode;
PImage catcher;
PImage Catch;
PImage raindrop;
PImage back;
PImage blood;
PImage bloody;
PImage flood;
void setup() {
  // following code loads all images
  raindrop=loadImage("raindrop.png");
  Catch=loadImage("catch.png");
  back=loadImage("back.jpg");
  catcher=loadImage("catcher.png");
  blood=loadImage("blood.png");
  bloody=loadImage("bloody.png");
  flood=loadImage("flood.jpeg");
  s= new Survive(); //define survival mode(will be important later on as i work on game)
  size(500, 750);
  x=width/2;
  index=1;
  start=1;// gives start int a value
  survival=false;//survival mode
  suddendeath=false;//sudden death mode
  freemode=false;//free mode 
  t=new Timer();//define timer
  c=new Catcher(); //define catcher
  screen= new Screen();// define screen
  for (int i=0;i<rain.length;i++) {
    rain[i]=new Raindrop(); //define each raindrop
  }
}
void draw() {
  colorMode(HSB, 360, 100, 100);
  background(back);
  if (start==1) {
    screen.displayStart();//show start screen
    screen.startWork();//let start screen work
  }
  if (start==2) {
    screen.choose();//show choose screen
  }
  if (start==3) {
    noCursor();//make cursor dissapear
    if (survival==true) {
      s.display(); //shows lives left
    }
    if (suddendeath==true) {
      textSize(30);
      textAlign(CENTER, CENTER);
      text("SUDDEN DEATH", width/2, height/2-50);
      s.display(); //shows lives left
      image(bloody, 0, 0, 1000, 750);//shows a bloddy splat
    }
    if (freemode==true) {
      text((millis()-startTime)/1000, width/2, 20);//shows amount spent playing on top of screen
    }



    c.display(); //displays catcher
    t.count(); //counts the time and adds new raindrops after a certain interval
    for (int i=0;i<index;i++) {
      rain[i].display();//displays raindrops
      rain[i].rain();//makes raindrops fall
      c.hit(rain[i]);//checks if raindrop hit catcher
      s.go(rain[i]);//checks lives for survival mode}
    }
    screen.displayStop();//displays end game screen
  }

}

void keyPressed() {
  if (key=='a') {
    x=x-30;//makes second cacher move left
  }
  if (key=='s') {
    x=x+30;//makes second catcher move right
  }
}

