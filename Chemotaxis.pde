Bacteria [] mover;
 
 void setup()   
 {     
    size(500, 500);
    background(0);
    mover = new Bacteria[100];
    for(int i = 0; i < mover.length; i++){
      mover[i] = new Bacteria();
    } 
 }   
 void draw()   
 {    
   background(66, 134, 244);
   for(int i = 0; i < mover.length; i++){
     mover[i].move();
     mover[i].show();
   }
 }  
 class Bacteria    
 {     
    int myX, myY;
    Bacteria(){
      myX = 250;
      myY = 250;
    }
  void show(){
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255)); //random colored dots
    ellipse(myX, myY, 50, 50);
  } 
 void move(){//causing them to move around in any directon
    if(mouseX > myX && mouseY > myY){
      myX += (int)(Math.random()*8);
      myY += (int)(Math.random()*8); 
    }
    else if(mouseX < myX && mouseY < myY){
      myX -= (int)(Math.random()*8);
      myY -= (int)(Math.random()*8); 
    }
    else if(mouseX < myX && mouseY > myY){
      myX -= (int)(Math.random()*8);
      myY += (int)(Math.random()*8); 
    }
    else if(mouseX > myX && mouseY < myY){
      myX += (int)(Math.random()*8);
      myY -= (int)(Math.random()*8); 
    }
   
   else {
       myX += (int)(Math.random()*3)-1; //when in one spot still move
       myY += (int)(Math.random()*3)-1; 
   }
   } 
 }

   
