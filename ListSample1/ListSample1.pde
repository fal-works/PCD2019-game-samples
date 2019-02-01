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


ArrayList<Element> elements;

void setup() {
  size(640, 480);
  elements = new ArrayList<Element>();
}

void draw() {
  background(128);
  
  // Every second
  if (frameCount % 60 == 0) {
    elements.add(new Element());  // Add new element.
  }

  for (Element eachElement : elements) {
    eachElement.update();
  }

  for (Element eachElement : elements) {
    eachElement.display();
  }
}
