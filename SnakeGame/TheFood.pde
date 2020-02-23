
class Food {
  int size;
  float x, y;
  Food() {
    x = random(0, width);
    y = random(0, height);
    size = 15;
  }
  
  void show(){
   rect(x,y,size,size); 
  }
}
