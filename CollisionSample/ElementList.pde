import java.util.Iterator;

class ElementList extends ArrayList<Element> {
  /**
   * Updates each element and removes each dead element.
   */
  void update() {
    Iterator<Element> iterator = this.iterator();

    while (iterator.hasNext()) {
      Element element = iterator.next();
      element.update();

      if (element.isDead) iterator.remove();
    }
  }
  
  /**
   * Displays each element.
   */
  void display() {
    for (Element eachElement : this) {
      eachElement.display();
    }
  }
  
  /**
   * Runs collision process between two groups.
   */
  void collide(ElementList otherGroup) {
    for (Element element : this) {
      for (Element other: otherGroup) {
        float distance = element.position.dist(other.position);
    
        if (distance < 50) {
          element.isDead = true;
          other.isDead = true;
        }
      }
    }
  }
}
