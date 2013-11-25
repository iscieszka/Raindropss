Raindrop r;

void setup() {
  size(500,500);
  r=new Raindrop();
}
void draw() {
  background(0);
  r.display();
  r.rain();
}

