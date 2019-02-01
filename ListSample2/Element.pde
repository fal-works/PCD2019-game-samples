class Element {
  PVector position;
  PVector velocity;
  
  Element() {
    // Initial position: Center of the window
    position = new PVector(width / 2, height / 2);
    
    // Velocity: random direction
    velocity = PVector.random2D();
  }
  
  void update() {
    // Move
    position.add(velocity);
  }
  
  void display() {
    ellipse(position.x, position.y, 50, 50);
  }
}
