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
}
