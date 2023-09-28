 Die roll, square;
 
 void setup()
  {
    size(400,400);
      noLoop();
      square = new Die (200, 200);
  }
  void draw()
  {
  background(0);
  
  square.show();
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
      fill(255,255,255);
      rect(175, 175, 50, 50);
      beginShape();

      
      }
  }
