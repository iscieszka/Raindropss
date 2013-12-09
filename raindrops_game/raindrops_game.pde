int index ;
Raindrop[] rain= new Raindrop[10000];
int oldTime=0;
Catcher c;
void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  index=1;
  c=new Catcher();
  for (int i=0;i<rain.length;i++) {
    rain[i]=new Raindrop();
  }
}
void draw() {
  background(185, 100, 100);
  c.display();
  for (int i=0;i<index;i++) {
    rain[i].display();
    rain[i].rain();
    c.hit(rain[i]);
  }
  if (millis()-oldTime>50) {
    oldTime=millis();
    if (index<rain.length) {
      index++;
    }
  }
}

