PImage I;
void setup() {
  I = loadImage("lena.png");
  size(512, 256);
  I.resize(256, 256);
  image(I, 0, 0);
  image(rev(I), 256, 0);
}

void draw() {
}

PImage rev(PImage I) {
  PImage R = createImage(I.width, I.height, RGB);
  R.set(0, 0, I.get(I.width / 2, 0, I.width, I.height));
  R.set(R.width / 2, 0, I.get(0, 0, I.width / 2, I.height));
  for (int i=0; i<R.width; i++) 
     //R.pixels[pos(i, i, I.width)] = color(random(0, 255), random(0, 255), random(0, 255));
       R.set(i, i, color(random(0, 255), random(0, 255), random(0, 255)));
  return R;
}

/*int pos(int x, int y, int z) {
  return x + y * z;
}*/

void keyPressed() {
  if (key == 'r' || key == 'R') {
    setup();
  }
}
