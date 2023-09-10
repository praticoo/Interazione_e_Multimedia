PImage I;
void setup() {
  I = loadImage("lena.png");
  size(512, 512);
  image(wow(I), 0, 0);
}

void draw() {}

PImage wow(PImage I) {
  float f = random(0, 2);
  println(f);
  color c;
  PImage R = createImage(I.width, I.height, RGB);
  R.set(0, 0, I.get(I.width - I.width / 3, 0, I.width, I.height));
  R.set(I.width / 3, 0, I.get(I.width / 3, 0, I.width - I.width / 3, I.height));
  R.set(I.width - I.width / 3, 0, I.get(0, 0, I.width - I.width / 3, I.height));
  for (int i=0; i<I.width / 3; i++) {
    for (int j=0; j<I.height; j++) {
      c = R.pixels[pos(i, j, I.width)];
      R.set(i, j, color(red(c) / f, green(c), blue(c)));
    } 
  }
  for (int i=I.width - I.width / 3; i<I.width; i++) {
    for (int j=0; j<I.height; j++) {
      c = R.pixels[pos(i, j, I.width)];
      R.set(i, j, color(red(c)*f, green(c), blue(c)));
    }
  }
  return R;
}

void keyPressed() {
  if (key == 'r' || key == 'R') setup();
}

int pos(int i, int j, int z) {
  return i + j * z;
}
