Die roll, square;
int x = 0;
int y = 0;
void setup()
{
  size(1000, 1000);
  noLoop();
  square = new Die (200, 200);
}
void draw()
{
  background(0);
  {
  for(int l = 1; l <= 50; l = l + 50)
  {
  for(int d = 1; d <= 40; d = d + 50)
  {
  square.show();
  x = x + 50;
  y = y + 50;
  }
  }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX, myY, myNumber;
  Die(int x, int y) //constructor
  {
    myNumber = 0;
    myX = x;
    myY = 0;
    //variable initializations here
  }
  void roll()
  {
    myNumber = myNumber + 1;
  }
  void show()
  {
    fill(255, 255, 255);
    rect(x, y, 50, 50);
  }
}
