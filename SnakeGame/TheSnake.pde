
class Snake {
  float x, y, xnext, ynext;
  int size, i;
  FloatList posx, posy;

  Snake() {
    x = width/2;
    y = height/2;
    size = 15;
    speed = 10;
    posx = new FloatList();
    posy = new FloatList();
    posx.append(x);
    posy.append(y);
  }


  void run(float xspeed, float yspeed) {
    xnext = posx.get(i) + xspeed;
    ynext = posy.get(i) + yspeed;

    wall(xnext, ynext);
    
    posx.append(xnext);
    posy.append(ynext);
    
    rect(xnext, ynext, size, size);
    i++;
    
  }

  void wall(float x, float y) {
    if (x>width) {
      xnext = 0;
    } else if (x<0) {
      xnext = width;
    } else if (y>height) {
      ynext = 0;
    } else if (y<0) {
      ynext = height;
    }
  }
}
