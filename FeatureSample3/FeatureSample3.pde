ElementList elements;

void setup() {
  size(640, 480);
  rectMode(CENTER);
  elements = new ElementList();
}

ElementComponent createDisplayer(int type) {
  switch(type) {
    default:
    case 0:
      return new CircleDisplayer();
    case 1:
      return new SquareDisplayer();
  }
}

void draw() {
  background(128);
  
  // Every second
  if (frameCount % 60 == 0) {
    int type = int(random(2));
    ElementComponent displayer = createDisplayer(type);
    Element newElement = new Element(displayer);
    elements.add(newElement);
  }

  elements.update();
  elements.display();
}
