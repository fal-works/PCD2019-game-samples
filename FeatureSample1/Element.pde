class Element {
  PVector position;
  PVector velocity;
  boolean isDead = false;
  int type;
  
  Element() {
    // Initial position: Center of the window
    position = new PVector(width / 2, height / 2);
    
    // Velocity: random direction
    velocity = PVector.random2D();
    
    type = int(random(2));  // Either 0 or 1
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
    switch(type) {
      case 0:
        ellipse(position.x, position.y, 50, 50);
        break;
      case 1:
        rect(position.x, position.y, 50, 50);
        break;
    }
  }
}
