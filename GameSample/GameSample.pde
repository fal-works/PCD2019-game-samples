ElementList playerElements;
ElementList enemyElements;
ElementList playerBulletElements;

void setup() {
  size(640, 480);
  rectMode(CENTER);
  playerElements = new ElementList();
  enemyElements = new ElementList();
  playerBulletElements = new ElementList();
  
  Element player = new Element(
    new SquareDisplayer(),
    new PlayerUpdater()
  );
  playerElements.add(player);
}

/**
 * Add new enemy at random position,
 * which moves down from the top.
 */
void addEnemy() {
  Element newEnemy = new Element(
    new CircleDisplayer(),
    new DefaultUpdater()
  );
  newEnemy.position.set(random(0.3, 0.7) * width, 0);
  newEnemy.velocity.set(0, 2);
  enemyElements.add(newEnemy);
}

void draw() {
  background(128);

  if (frameCount % 30 == 0)
    addEnemy();

  enemyElements.update();
  playerElements.update();
  playerBulletElements.update();
  
  playerBulletElements.collide(enemyElements);

  enemyElements.display();
  playerElements.display();
  playerBulletElements.display();
}
