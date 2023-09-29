int diceTotalValue = 0;
void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  background(125);
  for (int y = 10; y < 500; y += 110) {
    for (int x = 30; x < 500; x += 110) {
      Die bob = new Die(x, y);
      bob.show();
      bob.roll();
    }
  }
  String value = Integer.toString(diceTotalValue);
  textAlign(CENTER);
  textSize(20); 
  stroke(0, 0, 200);
  fill(173, 216, 230);
  text("The total sum of all the dice: " + diceTotalValue , 300, 580);
  diceTotalValue = 0;
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int locateX, locateY;
  //member variable declarations here

  Die(int x, int y) //constructor
  {
    locateX = x;
    locateY = y;
  }
  void roll()
  {
    double randomNumber = Math.random()*6;
    fill(255);
    noStroke();
    if (randomNumber < 1) {
      ellipse(locateX+50, locateY+50, 10, 10); // one
      diceTotalValue++;
    } else if (randomNumber < 2) {
      ellipse(locateX+20, locateY+20, 10, 10); // two
      ellipse(locateX+80, locateY+80, 10, 10);
      diceTotalValue+=2;
    } else if (randomNumber < 3) {
      ellipse(locateX+20, locateY+20, 10, 10); // three
      ellipse(locateX+50, locateY+50, 10, 10);
      ellipse(locateX+80, locateY+80, 10, 10);
      diceTotalValue+=3;
    } else if (randomNumber < 4) {
      ellipse(locateX+30, locateY+30, 10, 10); // four
      ellipse(locateX+30, locateY+70, 10, 10);
      ellipse(locateX+70, locateY+30, 10, 10);
      ellipse(locateX+70, locateY+70, 10, 10);
      diceTotalValue+=4;
    } else if (randomNumber < 5) {
      ellipse(locateX+30, locateY+30, 10, 10); // five
      ellipse(locateX+30, locateY+70, 10, 10);
      ellipse(locateX+50, locateY+50, 10, 10);
      ellipse(locateX+70, locateY+30, 10, 10);
      ellipse(locateX+70, locateY+70, 10, 10);
      diceTotalValue+=5;
    } else {
      ellipse(locateX+30, locateY+25, 10, 10); // six
      ellipse(locateX+70, locateY+25, 10, 10);
      ellipse(locateX+30, locateY+50, 10, 10);
      ellipse(locateX+70, locateY+50, 10, 10);
      ellipse(locateX+30, locateY+75, 10, 10);
      ellipse(locateX+70, locateY+75, 10, 10);
      diceTotalValue+=6;
    }
  }
  void show()
  {
    stroke(0);
    fill((int)(Math.random()*156)+100, (int)(Math.random()*156), (int)(Math.random()*156));
    rect(locateX, locateY, 100, 100, 20);
  }
}
