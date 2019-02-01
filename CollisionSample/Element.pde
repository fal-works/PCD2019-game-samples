class Element {
  PVector position;
  PVector velocity;
  boolean isDead = false;
  ElementComponent displayer;
  
  Element(ElementComponent displayer, float x, float y) {
    // Set initial position
    position = new PVector(x, y);
    
    // Velocity: random direction
    velocity = PVector.random2D();
    
    // Set displayer
    this.displayer = displayer;
  }
  
  void update() {
    // Move
    position.add(velocity);
    
    // Die if out of screen
    if (position.x < 0 || position.x > width ||
        position.y < 0 || position.y > height) {
      isDead = true;
    }
  }
  
  void display() {
    displayer.run(this);
  }
}
