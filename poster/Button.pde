class Button{
  
String buttonText;
boolean visible=true;
int buttonId;
int buttonPosition;
float xx;
float yy;
float ww; 
float hh;
  
  public Button(String text, int position, int id){
  buttonText = text;
  buttonPosition = position;
  buttonId = id;
  toggleVisibility();
  }

public void mouseClicked(){
  if ((mouseX >= xx) && (mouseY >= yy) && (mouseX < (xx + ww)) && (mouseY < (yy + hh))){
    println("Button clicked " + buttonText);
      if (buttonId == 0){
        startPage = true;
        game1Intro = false;
        endPage=false;
        game2=false;
        //variables game 3  
        cpoint=0;
        cimgpos = -400;
                                                                                                
        //variables animation
        boxpos1x=1000;
        boxpos1y=300;
        boxpos2x=-20;
        boxpos2y=300;
        boxpos3x=1000;
        dstart1 = 50;
        dstart2= 125;
        dstart3= 200;
        flowstart1=-375;
        flowstart2=-410;
        flowstart3=-375;
        flowstart4=-375;
        flowstart5=-375;
        flowstart6=-375;
        flowstart7=-375;
        flowstart8=-375;
        flowstart9=-375;
        flowstart10=-375;
        flowstartcrit=68;
        flowstart11=-375;
        dtextpos1 = 1000;
        dtextpos2 = -300;
        dtextpos3 = -100;
        dtextpos4 = -100;
        dtextpos5 = -100;
        dtextpos6 = -100;
        dtextpos7 = -100;
        dtextpos8 =1000;
        dtextpos9 =-270;
        }
      if (buttonId == 1){
        startPage = false;
        game1Intro = true;
        game1=false;
        }
      if (buttonId == 2){
        game1Intro = false;
        aDraw=true;
        aMode=true;
        game2Intro = false;
        }
      if (buttonId == 3){
        game1=false;
        game2Intro = true;
        aMode=false;
        game2=false;
        }
      if (buttonId == 4){
        game2Intro = false;
        aProg =true;
        game3Intro = false;
        }
      if (buttonId == 5){
        game2 = false;
        game3Intro = true;
        game3=false;
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
    setPosition(780, 1090, 50, 50);
  }  else if(position == 4){
     setPosition(800, 1150, 30, 30);
  
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
