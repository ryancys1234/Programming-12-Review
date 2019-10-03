boolean upkey, downkey, leftkey, rightkey;
PImage spaceshipimg;
spaceship mySpaceship;

void setup() {
  size(800,800);
  spaceshipimg = loadImage("boom-clipart-rocket-blast-10.png");
  imageMode(CENTER);
  mySpaceship = new spaceship(); //instantiation
}
void draw() {
  mySpaceship.show();
  
}

void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
}
