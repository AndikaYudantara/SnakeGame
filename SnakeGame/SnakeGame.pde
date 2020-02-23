Snake s;
Food f;
float xspeed, yspeed, speed;

void setup() {
  size(800, 800);
  s = new Snake();
  f = new Food();
  speed = 5;
}

void draw() {
  background(255);
  fill(100, 100, 255);
  stroke(0);
  s.run(xspeed, yspeed);
  f.show();
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (yspeed != speed) {
        xspeed = 0;
        yspeed = speed*-1;
      }
    } else if (keyCode == RIGHT) {
      if (xspeed != speed*-1) {
        xspeed = speed;
        yspeed = 0;
      }
    } else if (keyCode == DOWN) {
      if (yspeed != speed*-1) {
        xspeed = 0;
        yspeed = speed;
      }
    } else if (keyCode == LEFT) {
      if (xspeed != speed) {
        xspeed = speed*-1;
        yspeed = 0;
      }
    }
  }
}
