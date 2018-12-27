class Obstacle{
  int X;
  int Y;
  int Width;
  int Height;
  
  Obstacle(int posX, int posY, int obstWidth, int obstHeight) {
    X = posX;
    Y = posY;
    Width = obstWidth;
    Height = obstHeight;
  }
  
  
  void show() {
    fill(0,0,255);
    rect(X, Y, Width, Height);
  }
  
  void update() {
     show(); 
  }
  
  boolean inside(float x, float y, int obsX, int obsY, int obsWidth, int obsHeight) {
      if (x < (obsX+obsWidth) && x > (obsX) && y < (obsY + obsHeight) && y > (obsY)) {
        return true;  
      } else {
        return false;  
      }
  }
  
  
  
}
