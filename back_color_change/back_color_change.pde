color c;
int oldTime=0;

void setup() {
  size(500,500);
  colorMode(HSB, 360, 100, 100);
  c=color(random(360), random(100), 100);
  
  
}
void draw() {
  background(c);
  if (millis()-oldTime>2000) {
    c=color(random(360), random(100), 100);
    oldTime=millis();
  }
}

