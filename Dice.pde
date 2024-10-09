void setup()
  {
   size(400,400);
    noLoop();
  }
  void draw()
  {
    background(160);
    int sum = 0;
    Die bob;
    for(int y = 0; y <= 300; y +=100){
      for(int x = 0; x <= 300; x += 100){
        bob = new Die(x,y);
        bob.show();
        sum += bob.rolls;
      }
    }
    text("Sum: "+sum,300,380);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY,rolls,count;//member variable declarations here
     
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          count = 0;
          rolls = (int)(Math.random()*6)+1;
          //variable initializations here
      }
      void roll()//keeping count of dice
      {
          //your code here
           
      }
      void show()
      {
          fill(255);
          rect(myX,myY,50,50);
          fill(0);//your code here
          if(rolls == 1){
            ellipse(myX+25,myY+25,10,10);
          }
          if(rolls == 2){
            ellipse(myX+20,myY+20,10,10);
            ellipse(myX+30,myY+30,10,10);
          }
          if(rolls == 3){
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX+25,myY+25,10,10);
            ellipse(myX+35,myY+35,10,10);
          }
          if(rolls == 4){
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX+35,myY+15,10,10);
            ellipse(myX+15,myY+35,10,10);
            ellipse(myX+35,myY+35,10,10);
          }
          if(rolls == 5){
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX+35,myY+15,10,10);
            ellipse(myX+15,myY+35,10,10);
            ellipse(myX+35,myY+35,10,10);
            ellipse(myX+25,myY+25,10,10);
          }
          if(rolls == 6){
            ellipse(myX+10,myY+15,10,10);
            ellipse(myX+25,myY+15,10,10);
            ellipse(myX+40,myY+15,10,10);
            ellipse(myX+10,myY+35,10,10);
            ellipse(myX+25,myY+35,10,10);
            ellipse(myX+40,myY+35,10,10);
          }
      }
  }
