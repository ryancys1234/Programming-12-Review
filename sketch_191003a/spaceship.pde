class spaceship //Class is a blueprint. Every class needs 3 things: instance variable, constructor(s), and behaviour functions
  extends GameObject { //connects to the GameObject class
  //instance variable: it is different from regular variables in that it can mostly be accessible in the class Spaceship
  PVector direction;

  //constructor(s): it is a function special to this class. No need to put int before the function name
  spaceship() {
    lives = 3;
    //Without PVectors, setting starting points would be like this:
    //x = width/2;
    //y = height/2
    location = new PVector(width/2, height/2); //with PVectors the x, y coordinates can be put together
    velocity = new PVector(0, 0);
    direction = new PVector(0, -1); //could also be (0, -0.1)
  }

  //behaviour functions (void show, void act)
  void show() {
    pushMatrix();
    translate(location.x, location.y); //rotating only works with translate
    rotate( direction.heading() ); //rotate function, expects a number, not a pvector
    image(spaceshipimg, 0, 0, 120, 200);
    popMatrix();
  }

  void act() { //makes the spaceship move around
    //x = x + vx; these two lines of code will exist if vectors were not used
    //y = y + vy;
    location.add(velocity); //vector adds to another vector
    if (upkey) velocity.add(direction); //add direction to velocity so the spaceship will go the way the arrow key ordained
    if (downkey) velocity.sub(direction); //sub means subtract
    if (leftkey) direction.rotate(-radians(2)); //2 degrees is converted to radians
    if (rightkey) direction.rotate(radians(2));
    if (spacekey) myGameObjects.add(new Bullet());

    if (location.y < -50) location.y = height+50; //cannot use <= but <
    if (location.y > height+50) location.y = height-50;
    if (location.x < -50) location.x = width+50;
    if (location.x > width+50) location.y = width-50;
  }
}
