float random = random(20,820);
PImage ObstaclePicture;

class Obstacle {                    //The obstacles
  float x = random(10,750);          //Random spawn X values
  float y = random(21,21);       //Random spawn Y values
  float yspeed = random(3,7);       //Randomized speed/fall values of the obstacles
  

  
  void fall(){                      //Command for a "fall" of the obstacles
    y = y + yspeed;                 //Spawn postition + Speed
          
    if (y > 750) {               //If object leaves the screen, it comes back from the top
      y = random(21,21);
      }
  }
  void show() {                     //Look of the obstacle
    //stroke(255);
    //line(x,y,x,y+10);
    fill(255);
    image(ObstaclePicture,x,y,100,100);//Look of the obstacle
  if ( y > 780){
    y = y + 400; }
  if ( y == 1){
  y = y + 35;}  
 
  if (  x>cboxposx - 40 && x<cboxposx + 40 && y >= cboxposy - 50 ){
    cpoint = 0; }
 
}}
