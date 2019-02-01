PVector position;
PVector velocity;

void setup() {
  size(640, 480);

  // Initial position: Center of the window
  position = new PVector(width / 2, height / 2);
  
  // Velocity: random direction, length = 1
  velocity = PVector.random2D();
}

void draw() {
  background(128);
  
  position.add(velocity);
  ellipse(position.x, position.y, 50, 50);
}
