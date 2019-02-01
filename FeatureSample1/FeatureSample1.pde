ElementList elements;

void setup() {
  size(640, 480);
  rectMode(CENTER);
  elements = new ElementList();
}

void draw() {
  background(128);
  
  // Every second
  if (frameCount % 60 == 0) {
    elements.add(new Element());  // Add new element.
  }

  elements.update();
  elements.display();
}
