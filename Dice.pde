

void setup()
{
  size(1000, 1000);
  noLoop();
 }
void draw()
{
  background(255);
  int sum = 0;
  for(int y = 50; y < 950; y += 50){
    for(int x = 50; x < 950; x +=50){
      Die square = new Die (x, y);
      square.roll();
      square.show();
      sum += square.getRoll();
    }
  }
  text("Total = " + sum, 475, 30, 10);
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
    myX = x;
    myY = y;
    //variable initializations here
  }

  void roll()
  {
    myNumber = (int)(Math.random()*6)+1;
  }
  int getRoll(){
    return myNumber;
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX, myY, 50, 50);
    fill(0);
    if(myNumber == 1){
      ellipse(myX + 25, myY + 25, 10,10);
    }else if(myNumber == 2){
      ellipse(myX + 40, myY + 10, 10,10);
      ellipse(myX + 10, myY + 40, 10,10);
    }else if(myNumber == 3){
      ellipse(myX + 25, myY + 25, 10,10);
      ellipse(myX + 40, myY + 10, 10,10);
      ellipse(myX + 10, myY + 40, 10,10);
    }else if(myNumber == 4){
      ellipse(myX + 10, myY + 40, 10,10);
      ellipse(myX + 10, myY + 10, 10,10);
      ellipse(myX + 40, myY + 10, 10,10);
      ellipse(myX + 40, myY + 40, 10,10);
    }else if(myNumber == 5){
      ellipse(myX + 10, myY + 40, 10,10);
      ellipse(myX + 10, myY + 10, 10,10);
      ellipse(myX + 40, myY + 10, 10,10);
      ellipse(myX + 40, myY + 40, 10,10);
      ellipse(myX + 25, myY + 25, 10,10);
    }else if(myNumber == 6){
      ellipse(myX + 10, myY + 10, 10,10);
      ellipse(myX + 10, myY + 25, 10,10);
      ellipse(myX + 10, myY + 40, 10,10);
      ellipse(myX + 40, myY + 10, 10,10);
      ellipse(myX + 40, myY + 25, 10,10);
      ellipse(myX + 40, myY + 40, 10,10);
    }
  }
}
