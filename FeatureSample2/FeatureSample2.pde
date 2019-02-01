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
    switch(int(random(2))) {
      case 0:
        elements.add(new CircleElement());
        break;      
      case 1:
        elements.add(new SquareElement());
        break;      
    }
  }

  elements.update();
  elements.display();
}
