ElementList circleElements;
ElementList squareElements;

void setup() {
  size(640, 480);
  rectMode(CENTER);
  circleElements = new ElementList();
  squareElements = new ElementList();
}

void addElements() {
  ElementComponent circleDisplayer = new CircleDisplayer();
  Element newCircleElement = new Element(circleDisplayer, width / 2, 0.4 * height);
  circleElements.add(newCircleElement);

  ElementComponent squareDisplayer = new SquareDisplayer();
  Element newSquareElement = new Element(squareDisplayer, width / 2, 0.6 * height);
  squareElements.add(newSquareElement);
}

void draw() {
  background(128);

  // Per 20 frames
  if (frameCount % 20 == 0)
    addElements();

  circleElements.update();
  squareElements.update();
  
  circleElements.collide(squareElements);

  circleElements.display();
  squareElements.display();
}
