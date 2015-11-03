Snowflake [] snow;
void setup(){
  background(255);
  size (750,750);
  frameRate(60);
    snow = new Snowflake[500];
      for(int i =0; i< snow.length;i++){
        snow[i]=new Snowflake();
      }
}

void draw(){
  for(int i =0; i< snow.length;i++){
    snow[i].erase();
    snow[i].show();
    snow[i].lookDown();
    snow[i].move();
    snow[i].wrap();
  }
}

class Snowflake{
  int xPos, yPos, startY;
  boolean isMoving;
  
    Snowflake(){
      xPos=((int)(Math.random()*740)+5);
      startY=(0-((int)(Math.random()*750)));
      yPos=startY;
   }
  
    void show(){
      fill(31,190,214);
      ellipse(xPos,yPos,10,10);
      //println(get (mouseX,mouseY));
    }

  void erase(){
      fill(255);
      noStroke();
      ellipse(xPos,yPos-2,11,10);
    }
  
  void lookDown(){
    if ((get(xPos, yPos+6)==-12829636)||(get(xPos, yPos+6)==-14696746))
      isMoving=false;
    else
      isMoving=true;
    }
  
  void move(){
    if (isMoving)
      yPos=yPos+1;
  }
  
  void wrap(){
    if (yPos==755)
      yPos=startY;
  }
}
  

void mouseDragged(){
  if (mouseButton==37){
    fill(60);
    ellipse(mouseX, mouseY, 10,10);
  }
  else if (mouseButton==39){
    fill(255);
    ellipse(mouseX, mouseY, 25,25);
  }
}
