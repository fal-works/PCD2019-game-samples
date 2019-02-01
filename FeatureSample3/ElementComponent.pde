interface ElementComponent {
  void run(Element element);
}

class CircleDisplayer implements ElementComponent {
  void run(Element element) {
    ellipse(element.position.x, element.position.y, 50, 50);
  }
}

class SquareDisplayer implements ElementComponent {
  void run(Element element) {
    rect(element.position.x, element.position.y, 50, 50);
  }
}
