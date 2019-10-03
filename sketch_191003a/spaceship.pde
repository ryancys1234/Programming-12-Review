class spaceship { //every class needs 3 things: instance variable, constructor(s), and behaviour functions
  //instance variable: it is different from regular variables in that it can mostly be accessible in the class Spaceship
  int lives;
  PVector location;
  PVector velocity;
  PVector direction;

  //constructor(s): it is a function special to this class. No need to put int before the function name
  spaceship() {
    lives = 3;
    //Without PVectors, setting starting points would be like this:
    //x = width/2;
    //y = height/2
    location = new PVector(width/2, height/2); //with PVectors the x, y coordinates can be put together
    velocity = new PVector(0, 0);
    direction = new PVector(0, -1);
  }

  //behaviour functions (void show, void act)
  void show() {
    pushMatrix();
    translate(location.x,location.y);
    image(spaceshipimg, 0, 0, 100,100);
    popMatrix();
  }
  
  void act() {
    
  }
}
