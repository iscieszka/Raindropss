
Survive s;
Raindrop[] rain= new Raindrop[10000];
Catcher c;
void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  index=1;
  c=new Catcher(); //define catcher
  s= new Survive(); //define survival mode(will be important later on as i work on game)
  for (int i=0;i<rain.length;i++) {
    rain[i]=new Raindrop(); //define each raindrop
  }
}
void draw() {
  background(185, 100, 100);
  c.display(); //displays catcher
  s.display(); //shows lives left
  for (int i=0;i<index;i++) {
    rain[i].display();//displays raindrops
    rain[i].rain();//makes raindrops fall
    c.hit(rain[i]);//checks if raindrop hit catcher
    s.go(rain[i]);//checks lives for survival mode
  }
  
}

