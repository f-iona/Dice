Die first; 
void setup()
  {
      noLoop();
      size(600,550);
      background (233, 221, 240);
  }
  void draw()
  {
    background (233, 221, 240);
    int dots = 0; 
    int dotsSix = 0; 
   
    
    for (int y = 20; y < 420; y+=52) {
      for (int x= 25; x <= 550; x+=55){
   first = new Die (x,y);
   first.show();
   first.roll();
   
   if (first.singleValue <= 6)
   {
       dots += first.singleValue;
   }
   if (first.singleValue == 6)
   {
     dotsSix++;
    } 
 
    } // for loop don't touch
  } // for loop don't touch 
    
  fill (0);
  textSize (20);
  text("Total dots: " + dots, 25, 520 );
  text ("Total sixes: " + dotsSix, 200, 520);
  textSize(15);
  text ("Greatest possible dots: " + 480, 350, 499); 
  text ("Greatest possible sixes: " + 80, 350, 520);
  
  if (dotsSix <= 10){
      fill (255, 0, 0);
      textSize(25);
      text ("C'mon, gotta get more sixes than that! ", 100, 480);
      } 
      
     if (dotsSix >= 11 && dotsSix < 15) {
      fill (0, 0, 0);
      textSize(25);
      text ("Not bad. Keep going. ", 100, 480);
     }
     
    if (dotsSix >= 15 && dotsSix <= 20)  {
      fill (0, 255, 0);
      textSize(25);
      text ("Waoh! That's quite a lot of sixes! ", 100, 480);
      fill (255, 255, 0);
      strokeWeight(1);
      ellipse (55, 463, 50, 50);
      fill (0, 0, 0);
      ellipse ( 43, 455, 10, 18);
      ellipse (63, 455, 10, 18);
      noFill();
      strokeWeight(2);
      arc(55, 468, 25, 25, radians (20), radians (150)); 
      }
      
     if (dotsSix >= 21){
      fill ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      textSize(25);
      text ("GOD LEVEL!!!! ", 100, 480);
      strokeWeight(1);
      fill(124, 205, 242);
      ellipse (55, 463, 50, 50);
      fill (0, 0, 0);
      ellipse ( 43, 455, 10, 18);
      ellipse (63, 455, 10, 18);
      ellipse (55, 473, 8 , 15);
     }
      
      if (dotsSix == 80) {
      fill ((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      textSize((int)(Math.random() *76)+25);
      text ("You win!!! ", 100, 480);
    
      }
  
  } //end all of draw

  
  class Die //models one single dice cube
  {
    int singleValue;
     int myX;
     int myY; 
      
      Die(int x, int y) //constructor
      {
    singleValue = (int) (Math.random()*6) +1;
     myX = x;
     myY = y;
      }
      void roll() {
      if (singleValue == 1) {
          fill(255,255,255);
          ellipse(myX+25,myY+25,10,10);
        }
        if (singleValue == 2) {
          fill(255,255,255);
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
        }
        if (singleValue == 3) {
          fill(255,255,255);
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+25, myY+25, 10, 10);
          ellipse(myX+40, myY+40,10, 10);
        }
        if (singleValue == 4) {
         fill(255,255,255);
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+10, myY+40, 10, 10);
          ellipse(myX+40, myY+10, 10,10);
          ellipse(myX+40, myY+40, 10, 10);
        }
        if (singleValue == 5) {
         fill(255,255,255);
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+10, myY+40, 10, 10);
          ellipse(myX+25, myY+25, 10, 10);
          ellipse(myX+40, myY+10, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
        }
        if (singleValue == 6) {
          fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
          ellipse(myX+10, myY+10, 10, 10);
          ellipse(myX+25, myY+10, 10, 10);
          ellipse(myX+40, myY+10, 10, 10);
          ellipse(myX+10, myY+40, 10, 10);
          ellipse(myX+25, myY+40, 10, 10);
          ellipse(myX+40, myY+40, 10, 10);
       }
      }  
      
      void show() {
   fill (0,0,0);
    rect(myX, myY, 50, 50, 10); //change positions to x and y later 
  }
 }

  void mousePressed()
  {
      redraw();
  }
  
   void keyPressed()
  {
      redraw();
  }
