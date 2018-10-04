class Button{
  
String buttonText;
boolean visible=true;
int buttonId;
int buttonPosition;
float xx;
float yy;
float ww; 
float hh;
  /**
  Create button.
  Select position:
  1 -- center
  2 -- left up corner
  3 -- right up corner
  4 -- left down corner
  5 -- right down corner
  **/
  public Button(String text, int position, int id){
  buttonText = text;
  buttonPosition = position;
  buttonId = id;
  toggleVisibility();
  }

public void mouseClicked(){
  if ((mouseX >= xx) && (mouseY >= yy) && (mouseX < (xx + ww)) && (mouseY < (yy + hh))){
    println("Button clicked " + buttonText);
      if (buttonId == 1){
        startPage = false;
        game1Intro = true;
        }
      if (buttonId == 2){
        game1Intro = false;
        }
      if (buttonId == 3){
        game1=false;
        game2Intro = true;
        aMode=false;
        }
      if (buttonId == 4){
        game2Intro = false;
        }
      if (buttonId == 5){
        game2 = false;
        game3Intro = true;
        }
      if (buttonId == 6){
        game3Intro = false;
        game3 = true;
        }
      
   } 
 
}


void handlePosition(int position){

  if (position == 1){
    setPosition(width/2, height/2, 50, 50);
  } else if(position == 2){
    setPosition(650, 800, 50, 50);
  }  else if(position == 3){
    setPosition(700, 1100, 50, 50);
  }  else if(position == 4){
  
  } else if(position == 5){
  
  } else {
  println("Position not found");
  
  }
 
}

void setPosition(float x, float y, float w, float h){
  xx = x;
  yy = y;
  ww = w;
  hh = h;
}

void toggleVisibility(){

  if (visible){
    visible = false;
  } else {
    visible = true;
  }
  handlePosition(buttonPosition);
  textFont(sansFont);
  textSize(32);
  textAlign(RIGHT);
  fill(pink);
  stroke(0);
  strokeWeight(5);
  

  text(buttonText, xx-5, yy+35);
  rect(xx, yy, ww, hh, 7);
  textAlign(LEFT);
}

  
}
