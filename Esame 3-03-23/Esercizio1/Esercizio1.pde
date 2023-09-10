Voto v;
Votone V;
ArrayList<Voto> abs;
void setup() {
size(500, 500);
abs = new ArrayList<Voto>();
}

void draw() {
background(0);
for (Voto v : abs) {
  v.run();
}
}

void keyPressed() {
  if (key == 'r' || key == 'R') setup();
}

void mousePressed() {
  if (mouseButton == LEFT) abs.add(new Voto(random(15, width-15), random(15, height-15), random(2, 10), int(random(18, 30))));
  else if (mouseButton == RIGHT) abs.add(new Votone(random(15, width-15), random(15, height-15), random(2, 10), int(random(18, 30))));
}
