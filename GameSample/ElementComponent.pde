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

class BulletDisplayer implements ElementComponent {
  void run(Element element) {
    rect(element.position.x, element.position.y, 20, 40);
  }
}

class DefaultUpdater implements ElementComponent {
  void run(Element element) {
    PVector position = element.position;

    // Move
    position.add(element.velocity);
    
    // Die if out of screen
    if (position.x < 0 || position.x > width ||
        position.y < 0 || position.y > height) {
      element.isDead = true;
    }
  }
}

class PlayerUpdater implements ElementComponent {
  void run(Element element) {
    // Move with mouse.
    element.position.set(
      constrain(mouseX, 0, width),
      constrain(mouseY, 0, height)
    );

    // Shoot bullet with mouse button.
    if (mousePressed && frameCount % 20 == 0) {
      Element newBullet = new Element(
        new BulletDisplayer(),
        new DefaultUpdater()
      );

      newBullet.position.set(element.position);
      newBullet.velocity.set(0, -10);

      playerBulletElements.add(newBullet);
    }
  }
}
