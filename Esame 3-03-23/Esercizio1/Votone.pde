class Votone extends Voto {
  Votone(float posX, float posY, float vel, int n) {
    super(posX, posY, vel, n);
  }
  
   void display() {
    rectMode(CENTER);
    noFill();
    stroke(255);
    rect(posX, posY, 30, 30);
    fill(255);
    textSize(28);
    text(n, posX - 13,  posY + 7);
    if (n > 24) {
      text("LODE", posX - 5, posY + 28);
    }
  }
  
  void move() {
    posX += 0;
  }
}
