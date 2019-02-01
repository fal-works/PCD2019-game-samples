abstract class Element {
  PVector position;
  PVector velocity;
  boolean isDead = false;
  
  Element() {
    // Initial position: Center of the window
    position = new PVector(width / 2, height / 2);
    
    // Velocity: random direction
    velocity = PVector.random2D();
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
  
  abstract void display();
}

class CircleElement extends Element {
  void display() {
    ellipse(position.x, position.y, 50, 50);
  }
}

class SquareElement extends Element {
  void display() {
    rect(position.x, position.y, 50, 50);
  }
}
