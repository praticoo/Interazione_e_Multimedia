PImage I;
int p;
void setup() {
size(512, 256);
I = loadImage("lena.png");
I.resize(256, 256);
image(I, 0, 0);
p = int(random(0, 100));
image(wow(I), 256, 0);
}

void draw() {
} 

PImage wow(PImage I) {
  color c;
  PImage R = createImage(I.width, I.height, RGB);
  R.set(0, 0, I.get(I.width / 2, 0, I.width, I.height));
  R.set(R.width / 2, 0, I.get(0, 0, I.width / 2, I.height));
  int n = R.pixels.length * p / 100;
  for (int i=0; i<R.pixels.length; i++) {
    c = color(R.pixels[i]);
    if(i < n) 
    R.pixels[i] = color(blue(c), green(c), red(c));
    else 
    R.pixels[i] = color(red(c), blue(c), green(c));
  }
  return R;
}

void keyPressed() {
  if (key == 'R' || key == 'r') 
    setup();
}
