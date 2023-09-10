class Voto {
  float posX, posY, vel;
  int n;
  Voto(float posX, float posY, float vel, int n) {
    this.posX = posX;
    this.posY = posY;
    this.vel = vel;
    this.n = n;
  }
  
  void display() {
    rectMode(CENTER);
    noFill();
    stroke(255, 255, 0);
    rect(posX, posY, 30, 30);
    fill(255, 255, 0);
    textSize(28);
    text(n, posX - 12,  posY + 7);
  }
  
  void move() {
    posX += vel;
    if (posX > width - 15 || posX < 15) vel = -vel;
  }
  
  void run() {
    display();
    move();
  }
}
