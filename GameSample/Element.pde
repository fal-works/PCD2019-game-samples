class Element {
  PVector position, velocity;
  boolean isDead = false;
  ElementComponent displayer, updater;
  
  Element(ElementComponent displayer, ElementComponent updater) {
    position = new PVector();
    velocity = new PVector();

    // Set components
    this.displayer = displayer;
    this.updater = updater;
  }
  
  void update() {
    updater.run(this);
  }
  
  void display() {
    displayer.run(this);
  }
}
