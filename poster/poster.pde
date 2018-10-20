//global
  //Page switchers
  boolean startPage=true;
  boolean game1Intro=false;
  boolean game1=false;
  boolean game2Intro=false;
  boolean game2=false;
  boolean game3Intro=false;
  boolean game3=false;
  boolean animation=false;
  Boolean endPage=false;
  
  //images
  PImage imgStartPage;
  PImage imgGame1Girl;
  PImage imgGame2Girl;
  PImage imgGame3Girl;
  PImage imgGame1BG;
  PImage imgGame2BG;
  PImage imgGame3BG;
  PImage imgEndPage;
  
  PImage dimgag;
  PImage mateo;
  PImage dglad;
  PImage dglass;
  
  //fonts
  PFont codeFont;
  PFont sansFont;
  
  //colors 
color orange = color(255,181,96);
color pink = color(255,159,173);
color blue = color(117,96,255);
color aBlack = color(0);
color white = color(255);
  
  //Buttons
  Button button1;
  Button button2;
  Button button3;
  Button button4;
  Button button5;
  Button button6;
  Button button2b;
  Button button3b;
  Button button4b;
  Button button5b;
  Button button6b;
  Button button7b;
  Button buttonR;
  
 //Image values
 
 int zero = 0;
 
 // image sizes and positions
 
 int Dpos1 = 300;
 int Dpos2 = 900;
 int Dpos3 = 310;
 int Dpos4 = 401;
 int Dpos5 = 200;
 int Dpos6 = 810; 
 
 
 //border positions
 
void setup(){ //<>//
  //load pictures/fonts
  imgStartPage = loadImage("startPage.png");
  imgGame1Girl = loadImage("girlGames1.png");
  imgGame2Girl = loadImage("girlGames2.png");
  imgGame3Girl = loadImage("girlGames3.png");
  imgGame1BG = loadImage("girlGamesBG1.png");
  imgGame2BG = loadImage("girlGamesBG2.png");
  imgGame3BG = loadImage("girlGamesBG3.png");
  imgEndPage = loadImage("endPage.png");
  
  cgoals = loadImage("goals.png");
  ObstaclePicture = loadImage("boat.PNG");
  
  mateo = loadImage("mateo.JPG");
  dimgag = loadImage("sad.JPG"); 
  dglad = loadImage("glad.JPG");
  dglass = loadImage("dglad.jpg");
  
  codeFont = createFont("SourceCodePro-Regular.ttf",32);
  sansFont = createFont("ProcessingSansPro-Regular.ttf",50);
  
  //Makes a number of objects in the array
  for ( int i = 0; i < obstacle.length; i++) {       
    obstacle[i] = new Obstacle();                   } 
  //size of program
  size(841,1189);
  }

void draw(){ //<>//
  //startPage
  if(startPage==true){
    image(imgStartPage,zero,zero);
    button1=new Button("Click to start",2,1);
    }
  if(game1Intro==true && game1==false){
    image(imgGame1BG, zero, zero);
    image(imgGame1Girl,zero,zero);
    button2=new Button("Click to start programming",3,2);
    button2b=new Button("Back",4,0);
    }
  if(startPage==false && game1Intro==false && game1==false && game2==false && game2Intro==false && animation==false && game3==false && game3Intro==false){
    if(aMode==true){
      image(imgGame1BG, zero, zero);
      }
    else if
      (aMode==false){
      image(imgGame2BG, zero, zero);
      }
    strokeWeight(aStrokeWeight5);
    fill(white);
    rect(aborder,aborder,agamesizeeight,agamesizeeight);
    rect(agameborderfive,aborder,agamesizethree,agamesizeeight);
    rect(agameborderfive,aborder,agamesizethree,agamesizetwo);
    rect(aborder,aborder,agamesizefive,agamesizeone);
    rect(aborder,agamebordderhundredandtwenty,agamesizefive,agamesizeone);
  
    //UI text
    textFont(sansFont);
    textSize(textSize1 );
    fill(pink);
    text("DRAWING PROGRAM",textPos1 ,atextcrityone);
    text("CODE",textPos2 ,atextcrityone);
    textSize(textSize2 );
    text("COLOR",textPos3,atextcritytwo);
    text("SIZE",textPos4,atextcritytwo);
    text("SHAPE",textPos5,atextcritytwo);
    text("RESET",textPos6,atextcritytwo);
    textFont(codeFont);
    if(aMode==true){
      game1=true;
      }
    else if
      (aMode==false){
      game2=true;
      }
    }
  if(game1==true && animation==false || game2==true && animation==false){
    //UI Filler
    noStroke();
    fill(white);  //background for UI
    rect(aResetRectX ,aResetRectY ,aResetRectW ,aResetRectH ); //reseting settings
    
    
    //UI
    stroke(zero);
    strokeWeight(aStrokeWeight5);
    rect(agameborderfive,aUIRectY ,aUIRectW,aUIRectH);
    
    //UItext
    fill(aBlack);
    textSize(textSize3);
    text("if (box(X) = color(Y));                   then(colorSelector(Z)=color(Y));",aTextSelectorX ,aTextSelectorY1,aTextSelectorW ,aTextSelectorH );
    text("if (box(X) = stroke(Y);                   then(strokeSelector(Z)=stroke(Y);" ,aTextSelectorX ,aTextSelectorY2,aTextSelectorW ,aTextSelectorH );  
    text("if (box(X) = shape(Y);                    then(shapeSelector(Z)=shape(Y);" ,aTextSelectorX ,aTextSelectorY3,aTextSelectorW ,aTextSelectorH );  
    
    
    //Color Squares
    fill(aColor1);
    rect(aBoxDrawColor1X,aBoxDrawColorY,aBoxWH,aBoxWH);
    fill(aColor2);  
    rect(aBoxDrawColor2X,aBoxDrawColorY,aBoxWH,aBoxWH);
    fill(aColor3);
    rect(aBoxDrawColor3X,aBoxDrawColorY,aBoxWH,aBoxWH);
    noFill(); // To make checkboxes white
    
    //Stroke lines 
    strokeWeight(aStrokeDraw1);
    line(aStrokeDraw1X,aStrokeDrawY1,aStrokeDraw1X,aStrokeDrawY2);
    strokeWeight(aStrokeDraw2);
    line(aStrokeDraw2X,aStrokeDrawY1,aStrokeDraw2X,aStrokeDrawY2);
    strokeWeight(aStrokeDraw3);
    line(aStrokeDraw3X,aStrokeDrawY1,aStrokeDraw3X,aStrokeDrawY2);
    strokeWeight(aStrokeWeight5); 
    
    //Shapes
    line(aShapeLineDrawX,aShapeLineDrawY1,aShapeLineDrawX,aShapeLineDrawY2);
    if(aShapeSelectorProg==2){
      ellipse(aShapeEllipseDrawX,aShapeEllipseDrawY,aShapeWH,aShapeWH);
      }
    if(aShapeSelectorProg==3){
      rect(aShapeRectDrawX,aShapeRectDrawY,aShapeWH,aShapeWH);
      }
    
    //Resetbutton
    rect(aBoxDrawResetX,aBoxDrawResetY,aBoxWH,aBoxWH);
    
        
    // squares to put Colorsquares in
    rect(aBoxProgColor1X,aBoxProgColor1Y,aBoxWH,aBoxWH);
    rect(aBoxProgColor2X,aBoxProgColor2Y,aBoxWH,aBoxWH);
    rect(aBoxProgColor3X,aBoxProgColor3Y,aBoxWH,aBoxWH);
    
    
    // Squares to put Colorsquares in
    rect(aBoxProgStroke1X,aBoxProgStroke1Y,aBoxWH,aBoxWH);
    rect(aBoxProgStroke2X,aBoxProgStroke2Y,aBoxWH,aBoxWH);
    rect(aBoxProgStroke3X,aBoxProgStroke3Y,aBoxWH,aBoxWH);
    
    // Square to put Shapes in
    rect(aBoxShapeProgX,aBoxShapeProgY,aBoxWH,aBoxWH);
    
    
    
    // moving ColorSquares
    fill(orange);  
    rect(aBoxProgRedX,aBoxProgRedY,aBoxWH,aBoxWH);
    fill(blue);  
    rect(aBoxProgBlueX,aBoxProgBlueY,aBoxWH,aBoxWH);
    fill(pink);  
    rect(aBoxProgGreenX,aBoxProgGreenY,aBoxWH,aBoxWH);
    
    //movement of ColorSquare
      if(aMode==true){
          if(mouseX> agameborderfive+aBoxWH && mouseX < abordereight - aBoxWH && mouseY > aborder + aBoxWH && mouseY < abordereight - aBoxWH){
            if((mousePressed) && ( mouseX > aBoxProgRedX && mouseX <aBoxProgRedX+aBoxWH && mouseY>aBoxProgRedY && mouseY<aBoxProgRedY+aBoxWH) && aBoxProgMove == 0 || aBoxProgMove == 1) {
              aBoxProgRedX=mouseX-halfBoxWH; 
              aBoxProgRedY=mouseY-halfBoxWH;
              aBoxProgMove=1;
              }
                    
            else if ((mousePressed) && (mouseX > aBoxProgBlueX && mouseX <aBoxProgBlueX+aBoxWH && mouseY>aBoxProgBlueY && mouseY<aBoxProgBlueY+aBoxWH) && aBoxProgMove == 0 || aBoxProgMove == 2) {
              aBoxProgBlueX=mouseX-halfBoxWH; 
              aBoxProgBlueY=mouseY-halfBoxWH;
              aBoxProgMove=2;
              }
              
            else if ((mousePressed) && (mouseX > aBoxProgGreenX && mouseX <aBoxProgGreenX+aBoxWH && mouseY>aBoxProgGreenY && mouseY<aBoxProgGreenY+aBoxWH) && aBoxProgMove == 0 || aBoxProgMove == 3) {
              aBoxProgGreenX=mouseX-halfBoxWH; 
              aBoxProgGreenY=mouseY-halfBoxWH;
              aBoxProgMove=3;
              }
            }
          }
    
            
  //StrokeWeight lines
  strokeWeight(aStrokeWeight1);
  line(aStrokeSize1X,aStrokeSize1Y1,aStrokeSize1X,aStrokeSize1Y2);
  strokeWeight(aStrokeWeight5);
  line(aStrokeSize5X,aStrokeSize5Y1,aStrokeSize5X,aStrokeSize5Y2);
  strokeWeight(aStrokeWeight10);
  line(aStrokeSize10X,aStrokeSize10Y1,aStrokeSize10X,aStrokeSize10Y2);
  strokeWeight(aStrokeWeight15);
  line(aStrokeSize15X,aStrokeSize15Y1,aStrokeSize15X,aStrokeSize15Y2);
           
  //Movement of Stroke
  if(aMode==true){
    if(mouseX> agameborderfive+aBoxWH && mouseX < abordereight - aBoxWH && mouseY > aborder + aBoxWH && mouseY < abordereight - aBoxWH){
        if((mousePressed) && ( mouseX > aStrokeSize1X-15 && mouseX <aStrokeSize1X+15 && mouseY>aStrokeSize1Y1 && mouseY<aStrokeSize1Y2) && aStrokeSizeMove == 0 || aStrokeSizeMove == 1) {
        aStrokeSize1X=mouseX; 
        aStrokeSize1Y1=mouseY-halfBoxWH;
        aStrokeSize1Y2=mouseY+halfBoxWH;
        aStrokeSizeMove=1;
        }
        if((mousePressed) && ( mouseX > aStrokeSize5X-15 && mouseX <aStrokeSize5X+15 && mouseY>aStrokeSize5Y1 && mouseY<aStrokeSize5Y2) && aStrokeSizeMove == 0 || aStrokeSizeMove == 2) {
        aStrokeSize5X=mouseX; 
        aStrokeSize5Y1=mouseY-halfBoxWH;
        aStrokeSize5Y2=mouseY+halfBoxWH;
        aStrokeSizeMove=2;
        }
        if((mousePressed) && ( mouseX > aStrokeSize10X-15 && mouseX <aStrokeSize10X+15 && mouseY>aStrokeSize10Y1 && mouseY<aStrokeSize10Y2) && aStrokeSizeMove == 0 || aStrokeSizeMove == 3) {
        aStrokeSize10X=mouseX; 
        aStrokeSize10Y1=mouseY-halfBoxWH;
        aStrokeSize10Y2=mouseY+halfBoxWH;
        aStrokeSizeMove=3;
        }
        if((mousePressed) && ( mouseX > aStrokeSize15X-15 && mouseX <aStrokeSize15X+15 && mouseY>aStrokeSize15Y1 && mouseY<aStrokeSize15Y2)  && aStrokeSizeMove == 0 || aStrokeSizeMove == 4) {
        aStrokeSize15X=mouseX; 
        aStrokeSize15Y1=mouseY-halfBoxWH;
        aStrokeSize15Y2=mouseY+halfBoxWH;
        aStrokeSizeMove=4;
        }
      }
    }
  
  //Moving shapes
  noFill();
  strokeWeight(aStrokeWeight5);
  ellipse(aShapeEllipseProgX,aShapeEllipseProgY,aShapeWH,aShapeWH);
  rect(aShapeRectProgX,aShapeRectProgY,aShapeWH,aShapeWH);
  
  
  //movement of Shapes
  if(aMode==true){
      if(mouseX> agameborderfive+aBoxWH && mouseX < abordereight - aBoxWH && mouseY > aborder + aBoxWH && mouseY < abordereight - aBoxWH){
          if((mousePressed) && ( mouseX > aShapeRectProgX && mouseX <aShapeRectProgX+aShapeWH && mouseY>aShapeRectProgY && mouseY<aShapeRectProgY+aShapeWH) && aShapeMove == 0 || aShapeMove == 1) {
             aShapeRectProgX=mouseX-halfBoxWH; 
             aShapeRectProgY=mouseY-halfBoxWH;
             aShapeMove=1;
          }
          if((mousePressed) && sq(mouseX-aShapeEllipseProgX)+sq(mouseY-aShapeEllipseProgY)<sq(aShapeWH)/4&& aShapeMove == 0 || aShapeMove == 2){
             aShapeEllipseProgX=mouseX; 
             aShapeEllipseProgY=mouseY;
             aShapeMove=2;
            }
          }
       }
  
  //choosing color
    if(mousePressed) {
      
       if(mouseY >aBoxDrawColorY && mouseY < aBoxDrawColorY + aBoxWH){
          if(mouseX > aBoxDrawColor1X && mouseX < aBoxDrawColor1X+aBoxWH){
            stroke(aColor1);
            aColor=1;
            }
          if(mouseX>aBoxDrawColor2X && mouseX < aBoxDrawColor2X+aBoxWH){
            stroke(aColor2);
            aColor=2;
            }
          if(mouseX>aBoxDrawColor3X && mouseX<aBoxDrawColor3X+aBoxWH){
            stroke(aColor3);
            aColor=3;
            }
         }
    }
     
    //choosing strokeweight
    if(mousePressed) {
      
       if(mouseY >aStrokeDrawY1 && mouseY < aStrokeDrawY2){
          if(mouseX > aStrokeDraw1X-10 && mouseX < aStrokeDraw1X+10){
            strokeWeight(aStrokeDraw1);
            aStroke=1;
            }
          if(mouseX > aStrokeDraw2X-10 && mouseX < aStrokeDraw2X+10){
            strokeWeight(aStrokeDraw2);
            aStroke=2;
            }
          if(mouseX > aStrokeDraw3X-10 && mouseX < aStrokeDraw3X+10){
            strokeWeight(aStrokeDraw3);
            aStroke=3;
            }
         }
      }
  //Choosing Shape
    if(mouseX > aShapeLineDrawX-10 && mouseX < aShapeLineDrawX+10 && mouseY >aShapeLineDrawY1 && mouseY < aShapeLineDrawY2){
      aShapeSelector=1;
      }
    if(mouseX > aShapeRectDrawX && mouseX < aShapeRectDrawX + aShapeWH && mouseY >aShapeRectDrawY && mouseY < aShapeRectDrawY + aShapeWH && aShapeSelectorProg==3){
      aShapeSelector=3;
      }
    if (mouseX > aShapeRectDrawX && mouseX < aShapeRectDrawX + aShapeWH && mouseY >aShapeRectDrawY && mouseY < aShapeRectDrawY + aShapeWH && aShapeSelectorProg==2){
      aShapeSelector=2;
      }
         
  //numbers in squares
  textSize(textSize4);
  fill(aBlack,trans1);
  text("1",aBoxProgColor1X+8,aBoxProgColor1Y + aBoxWH-3);
  text("2",aBoxProgColor2X+8,aBoxProgColor2Y + aBoxWH-3);
  text("3",aBoxProgColor3X+8,aBoxProgColor3Y + aBoxWH-3);
  text("4",aBoxProgStroke1X+8,aBoxProgStroke1Y + aBoxWH-3);
  text("5",aBoxProgStroke2X+8,aBoxProgStroke2Y + aBoxWH-3);
  text("6",aBoxProgStroke3X+8,aBoxProgStroke3Y + aBoxWH-3);
  text("7",aBoxShapeProgX+8,aBoxShapeProgY + aBoxWH-3);
    
  // Drawing Correct Color 
  if (aColor==1){
    stroke(aColor1);
    }
  else if (aColor==2){
    stroke(aColor2);
    }
  else if (aColor==3){
    stroke(aColor3);
    }
  // Drawing Correct Stroke 
  if (aStroke==1){
    strokeWeight(aStrokeDraw1);
    }
  else if (aStroke==2){
    strokeWeight(aStrokeDraw2);  
    }
  else if (aStroke==3){
    strokeWeight(aStrokeDraw3);
    }
  
  // Drawing line
    if(aMode==false){
      if((mousePressed) && ( mouseX < agameborderfiveSec && mouseX >aborderSec && mouseY>agamebordderhundredandtwentySec && mouseY<abordereightSec) && (aShapeSelector==1)){
        line(mouseX, mouseY, pmouseX, pmouseY);
        }
      }  
  //Choosing of programs
    stroke(aBlack);
    strokeWeight(aStrokeWeight5);
    if (aMode==false){
        if(aProg==true){            //for void setup objects
          fill(aBlack,trans2);
          rect(agameborderfive,aborder,agamesizethree,agamesizeone);
          aProg=false;
          }
        fill(aBlack,trans2);                 //for void draw objects
        rect(agameborderfive,agamebordderhundredandtwenty,agamesizethree,agamesizeSeven);
        }
     if (aMode==true){
        if(aDraw==true){            //for void setup objects
        fill(aBlack,trans2);
        rect(aborder,aborder,agamesizefive,agamesizeeight); 
        aDraw=false;
        }
      fill(zero,trans2);                 //for void draw objects
      noStroke();
      rect(aRectVoidX ,aRectVoidY ,aRectVoidW ,aRectVoidH );
      fill(white);
      
      if(game1==true && game2==false){
        image(imgGame1Girl, zero, zero, width, height);
        button3=new Button("Click to continue",3,3);
        button3b=new Button("Back",4,1);
        }
       }
    }

      
     
    if(game2Intro==true){
     image(imgGame2BG, zero, zero, width, height);
     image(imgGame2Girl,zero,zero);
     game2=false;
     button4=new Button("Click to start drawing",3,4);
     button4b=new Button("Back",4,2);
     }
   if(game2==true && animation==false ){
       image(imgGame2Girl,zero,zero);
     button5=new Button("Click to continue",3,5);
     button5b=new Button("Back",4,3);
    
     }
   if(game3Intro==true){
     image(imgGame3BG, zero, zero, width, height);
     image(imgGame3Girl,zero,zero);
     button6=new Button("Click to start the game",3,6);
     button6b=new Button("Back",4,4);
    }
   if(game3==true && animation==false){
      image(imgGame3BG, zero, zero, width, height);
      fill(#CCD7FC);
      rect(cborder, cborder, cframewh, cframewh);
      // Gameborders
      textSize(textSize5);
      fill(pink);
      text(cpoint,21,40);
      cpoint = cpoint + 1;
    
      if ( cpoint >= 1001){
      cpoint = cpoint -1;}
      //water 
    
      //goals
      image(cgoals,160,cimgpos);
    
      if ( cpoint >= 750){
      cimgpos += 5;} 
      if ( cimgpos > agamesizefive){
      cimgpos -=5;}
    
      
    
      // Drag the box with press
      
      if(mousePressed){
        cboxposx = mouseX-mX-40;
        cboxposy = mouseY-mY;
    
        }
      fill(pink);
      rect(cboxposx, mY+700, cboxsizex, cboxsizey);
      
      image(imgGame3Girl, zero, zero, width, height);
      
       //images falling down
       for ( int i = 0; i < obstacle.length; i++) {
        obstacle[i].fall();
        obstacle[i].show();
        
         }
        if ( cpoint == cPointhit){
          cimgpos = cGoalReset;}
        if (cboxposx <= 23){
          cboxposx += 30;}
        if (cboxposx >= 820){
          cboxposx -=agamesizeone ;}
      
        
        if(cpoint==cGoal){
          cpoint=cGoal;
          game3=false;
          animation=true;
          }
        button7b=new Button("Back",4,5);
       }
        if(animation==true && game3==false){
          background(white);

          fill(white); 
          image(dglad,boxpos1x,boxpos1y);
          boxpos1x--;
          
          if (boxpos1x == stopbox1){
            boxpos1x++;
          }
          
         
          
          if (boxpos1x==stopbox1){
            boxpos2x-=2;
          
          
          }
          // text starts about here
          
          textSize(40);
          fill(pink);
          text("Congratulations! We won!",dtextpos1,Dpos1);
          
          if (boxpos1x >= Dpos3){  
            dtextpos1--;
          }
          String dtext2 = "Now please, take a look at the job opportunities";
          
          text(dtext2,dtextpos2,Dpos1,Dpos1,Dpos5);
          if (boxpos1x == Dpos4){
            dtextpos2+=4;
            
          if (dtextpos2 >=agamesizeone)
            dtextpos2 -=4;
            
          }
          
          text(djob2,flowstart1,dstart1);
          text(djob1,flowstart2,dstart2);
          text(djob3,flowstart3,dstart3);
          text(djob4,flowstart4,dstart1);
          text(djob5,flowstart5,dstart2);
          text(djob6,flowstart6,dstart3);
          text(djob7,flowstart7,dstart1);
          text(djob8,flowstart8,dstart2);
          text(djob9,flowstart9,dstart3);
          text(djob10,flowstart10,dstart1);
          text(djob11,flowstart11,dstart2);
          
          // all advertising
          if (dtextpos2 >=flowstartcrit){
            flowstart1+=dTextSpeed; }
          if (flowstart1 >zero){
            flowstart2+=dTextSpeed; }
          if (flowstart2 > zero) {
            flowstart3+=dTextSpeed; }
          if (flowstart3 >zero){
            flowstart4+=dTextSpeed; }
          if (flowstart4>zero){
            flowstart5 +=dTextSpeed;}
          if (flowstart5 >zero){
            flowstart7 +=dTextSpeed; }
          if (flowstart7 >zero){
            flowstart6 +=dTextSpeed; }
          if (flowstart6 >zero) {
            flowstart8 += dTextSpeed; }
          if (flowstart8>zero){
            flowstart9 +=dTextSpeed; }
          if (flowstart9>zero){
            flowstart10 +=dTextSpeed; }
          if (flowstart10>zero){
            flowstart11 +=dTextSpeed; }
          
          //more textmoving
           
          if (flowstart4 >zero){
            dtextpos1 += dThousand;
            dtextpos2 -= dThousand;}
          
          if (flowstart11 >Dpos2){
            boxpos1x -= dThousand; }
          image(dglass,boxpos3x,boxpos1y);  
          
          if (boxpos1x<zero){
            boxpos3x-=3;}
            
          if (boxpos3x <=Dpos1){
            boxpos3x+=3;}
            
          textSize(32);
          fill(pink);
          text("Doesn't that sound amazing?",dtextpos8,Dpos1);
          
          if (boxpos3x <= Dpos6){  
              dtextpos8-=3;
              }
          }        
  if(dtextpos8 <= zero){
  animation=false;
  endPage=true;
  image(imgEndPage,zero,zero);
  buttonR=new Button("Reset",4,0);
  }
  
        
     
}
  
  

























void mouseClicked(){
  //global
  if(startPage==true && endPage==false){
    button1.mouseClicked();
    }
  else if(game1Intro==true && endPage==false){
    button2.mouseClicked();
    button2b.mouseClicked();
    }
   else if(game1==true && aMode==true && endPage==false){
    button3.mouseClicked();
    button3b.mouseClicked();
    }
   else if(game2Intro==true && aMode==false && endPage==false){
    button4.mouseClicked();
    button4b.mouseClicked();
    }
   else if(game2==true && aMode==false && endPage==false){
    button5.mouseClicked();
    button5b.mouseClicked();
    }
   else if(game3Intro==true && endPage==false){
    button6.mouseClicked();
    button6b.mouseClicked();
    }
   else if(game3==true  && endPage==false){
    button7b.mouseClicked();
    }
   else if(endPage==true ){
    buttonR.mouseClicked();
    }
 
  //game 1+2
  if(game1==true || game2==true){
    if(aMode==false){
      if(mouseX > aBoxDrawResetX && mouseX < aBoxDrawResetX+aBoxWH && mouseY > aBoxDrawResetY && mouseY < aBoxDrawResetX+aBoxWH){
        fill(white);
        strokeWeight(aStrokeWeight5);
        stroke(zero);
        rect(aCanvasX,aCanvasY,aCanvasW,aCanvasH);
        }
      }
    }
  }

void mousePressed(){
  //game1+2
  if(game1==true || game2==true){
   if(aMode==false){ 
    aDrawRectEllipseX=mouseX;
    aDrawRectEllipseY=mouseY;  
    }
  }
 }
void mouseReleased (){
  //game 1+2
  if(game1==true || game2==true){
      //Red square
      if (aBoxProgRedX+halfBoxWH>aBoxProgColor1X && aBoxProgRedX+halfBoxWH<(aBoxProgColor1X+aBoxWH) && aBoxProgRedY+halfBoxWH >aBoxProgColor1Y && aBoxProgRedY+halfBoxWH<(aBoxProgColor1Y+aBoxWH)) {
        aColor1=orange;
        aBoxProgRedX=aBoxProgColor1X;
        aBoxProgRedY=aBoxProgColor1Y;
      }
      if (aBoxProgRedX+halfBoxWH>aBoxProgColor2X && aBoxProgRedX+halfBoxWH<(aBoxProgColor2X+aBoxWH) && aBoxProgRedY+halfBoxWH >aBoxProgColor2Y && aBoxProgRedY+halfBoxWH<(aBoxProgColor2Y+aBoxWH)) {
        aColor2=orange;
        aBoxProgRedX=aBoxProgColor2X;
        aBoxProgRedY=aBoxProgColor2Y;
      }
      if (aBoxProgRedX+halfBoxWH>aBoxProgColor3X && aBoxProgRedX+halfBoxWH<(aBoxProgColor3X+aBoxWH) && aBoxProgRedY+halfBoxWH >aBoxProgColor3Y && aBoxProgRedY+halfBoxWH<(aBoxProgColor3Y+aBoxWH)) {
        aColor3=orange;
        aBoxProgRedX=aBoxProgColor3X;
        aBoxProgRedY=aBoxProgColor3Y;
      }
      //Blue square
       if (aBoxProgBlueX+halfBoxWH>aBoxProgColor1X && aBoxProgBlueX+halfBoxWH<(aBoxProgColor1X+aBoxWH) && aBoxProgBlueY+halfBoxWH >aBoxProgColor1Y && aBoxProgBlueY+halfBoxWH<(aBoxProgColor1Y+aBoxWH)) {
        aColor1=blue;
        aBoxProgBlueX=aBoxProgColor1X;
        aBoxProgBlueY=aBoxProgColor1Y;
      }
      if (aBoxProgBlueX+halfBoxWH>aBoxProgColor2X && aBoxProgBlueX+halfBoxWH<(aBoxProgColor2X+aBoxWH) && aBoxProgBlueY+halfBoxWH >aBoxProgColor2Y && aBoxProgBlueY+halfBoxWH<(aBoxProgColor2Y+aBoxWH)) {
        aColor2=blue;
        aBoxProgBlueX=aBoxProgColor2X;
        aBoxProgBlueY=aBoxProgColor2Y;
      }
      if (aBoxProgBlueX+halfBoxWH>aBoxProgColor3X && aBoxProgBlueX+halfBoxWH<(aBoxProgColor3X+aBoxWH) && aBoxProgBlueY+halfBoxWH >aBoxProgColor3Y && aBoxProgBlueY+halfBoxWH<(aBoxProgColor3Y+aBoxWH)) {
        aColor3=blue;
        aBoxProgBlueX=aBoxProgColor3X;
        aBoxProgBlueY=aBoxProgColor3Y;
      }
      //Green square
      if (aBoxProgGreenX+halfBoxWH>aBoxProgColor1X && aBoxProgGreenX+halfBoxWH<(aBoxProgColor1X+aBoxWH) && aBoxProgGreenY+halfBoxWH >aBoxProgColor1Y && aBoxProgGreenY+halfBoxWH<(aBoxProgColor1Y+aBoxWH)) {
        aColor1=pink;
        aBoxProgGreenX=aBoxProgColor1X;
        aBoxProgGreenY=aBoxProgColor1Y;
      }
      if (aBoxProgGreenX+halfBoxWH>aBoxProgColor2X && aBoxProgGreenX+halfBoxWH<(aBoxProgColor2X+aBoxWH) && aBoxProgGreenY+halfBoxWH >aBoxProgColor2Y && aBoxProgGreenY+halfBoxWH<(aBoxProgColor2Y+aBoxWH)) {
        aColor2=pink;
        aBoxProgGreenX=aBoxProgColor2X;
        aBoxProgGreenY=aBoxProgColor2Y;
      }
      if (aBoxProgGreenX+halfBoxWH>aBoxProgColor3X && aBoxProgGreenX+halfBoxWH<(aBoxProgColor3X+aBoxWH) && aBoxProgGreenY+halfBoxWH >aBoxProgColor3Y && aBoxProgGreenY+halfBoxWH<(aBoxProgColor3Y+aBoxWH)) {
        aColor3=pink;
        aBoxProgGreenX=aBoxProgColor3X;
        aBoxProgGreenY=aBoxProgColor3Y;
      }
      //Stroke 1
      if (aStrokeSize1X > aBoxProgStroke1X && aStrokeSize1X < aBoxProgStroke1X + aBoxWH && aStrokeSize1Y1 +halfBoxWH  > aBoxProgStroke1Y && aStrokeSize1Y2 - halfBoxWH < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight1;
      aStrokeSize1X=aBoxProgStroke1X+halfBoxWH;
      aStrokeSize1Y1=aBoxProgStroke1Y;
      aStrokeSize1Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize1X > aBoxProgStroke2X && aStrokeSize1X < aBoxProgStroke2X + aBoxWH && aStrokeSize1Y1 +halfBoxWH  > aBoxProgStroke2Y && aStrokeSize1Y2 - halfBoxWH < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight1;
      aStrokeSize1X=aBoxProgStroke2X+halfBoxWH;
      aStrokeSize1Y1=aBoxProgStroke2Y;
      aStrokeSize1Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize1X > aBoxProgStroke3X && aStrokeSize1X < aBoxProgStroke3X + aBoxWH && aStrokeSize1Y1 +halfBoxWH  > aBoxProgStroke3Y && aStrokeSize1Y2 - halfBoxWH < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight1;
      aStrokeSize1X=aBoxProgStroke3X+halfBoxWH;
      aStrokeSize1Y1=aBoxProgStroke3Y;
      aStrokeSize1Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Stroke 5
      if (aStrokeSize5X > aBoxProgStroke1X && aStrokeSize5X < aBoxProgStroke1X + aBoxWH && aStrokeSize5Y1 +halfBoxWH  > aBoxProgStroke1Y && aStrokeSize5Y2 - halfBoxWH < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight5;
      aStrokeSize5X=aBoxProgStroke1X+halfBoxWH;
      aStrokeSize5Y1=aBoxProgStroke1Y;
      aStrokeSize5Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize5X > aBoxProgStroke2X && aStrokeSize5X < aBoxProgStroke2X + aBoxWH && aStrokeSize5Y1 +halfBoxWH  > aBoxProgStroke2Y && aStrokeSize5Y2 - halfBoxWH < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight5;
      aStrokeSize5X=aBoxProgStroke2X+halfBoxWH;
      aStrokeSize5Y1=aBoxProgStroke2Y;
      aStrokeSize5Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize5X > aBoxProgStroke3X && aStrokeSize5X < aBoxProgStroke3X + aBoxWH && aStrokeSize5Y1 +halfBoxWH  > aBoxProgStroke3Y && aStrokeSize5Y2 - halfBoxWH < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight5;
      aStrokeSize5X=aBoxProgStroke3X+halfBoxWH;
      aStrokeSize5Y1=aBoxProgStroke3Y;
      aStrokeSize5Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Stroke 10
      if (aStrokeSize10X > aBoxProgStroke1X && aStrokeSize10X < aBoxProgStroke1X + aBoxWH && aStrokeSize10Y1 +halfBoxWH  > aBoxProgStroke1Y && aStrokeSize10Y2 - halfBoxWH < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight10;
      aStrokeSize10X=aBoxProgStroke1X+halfBoxWH;
      aStrokeSize10Y1=aBoxProgStroke1Y;
      aStrokeSize10Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize10X > aBoxProgStroke2X && aStrokeSize10X < aBoxProgStroke2X + aBoxWH && aStrokeSize10Y1 +halfBoxWH  > aBoxProgStroke2Y && aStrokeSize10Y2 - halfBoxWH < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight10;
      aStrokeSize10X=aBoxProgStroke2X+halfBoxWH;
      aStrokeSize10Y1=aBoxProgStroke2Y;
      aStrokeSize10Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize10X > aBoxProgStroke3X && aStrokeSize10X < aBoxProgStroke3X + aBoxWH && aStrokeSize10Y1 +halfBoxWH  > aBoxProgStroke3Y && aStrokeSize10Y2 - halfBoxWH < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight10;
      aStrokeSize10X=aBoxProgStroke3X+halfBoxWH;
      aStrokeSize10Y1=aBoxProgStroke3Y;
      aStrokeSize10Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Stroke 15
      if (aStrokeSize15X > aBoxProgStroke1X && aStrokeSize15X < aBoxProgStroke1X + aBoxWH && aStrokeSize15Y1 +halfBoxWH  > aBoxProgStroke1Y && aStrokeSize15Y2 - halfBoxWH < aBoxProgStroke1Y +aBoxWH){
      aStrokeDraw1=aStrokeWeight15;
      aStrokeSize15X=aBoxProgStroke1X+halfBoxWH;
      aStrokeSize15Y1=aBoxProgStroke1Y;
      aStrokeSize15Y2=aBoxProgStroke1Y+aBoxWH;
      }
      if (aStrokeSize15X > aBoxProgStroke2X && aStrokeSize15X < aBoxProgStroke2X + aBoxWH && aStrokeSize15Y1 +halfBoxWH  > aBoxProgStroke2Y && aStrokeSize15Y2 - halfBoxWH < aBoxProgStroke2Y +aBoxWH){
      aStrokeDraw2=aStrokeWeight15;
      aStrokeSize15X=aBoxProgStroke2X+halfBoxWH;
      aStrokeSize15Y1=aBoxProgStroke2Y;
      aStrokeSize15Y2=aBoxProgStroke2Y+aBoxWH;
      }
      if (aStrokeSize15X > aBoxProgStroke3X && aStrokeSize15X < aBoxProgStroke3X + aBoxWH && aStrokeSize15Y1 +halfBoxWH  > aBoxProgStroke3Y && aStrokeSize15Y2 - halfBoxWH < aBoxProgStroke3Y +aBoxWH){
      aStrokeDraw3=aStrokeWeight15;
      aStrokeSize15X=aBoxProgStroke3X+halfBoxWH;
      aStrokeSize15Y1=aBoxProgStroke3Y;
      aStrokeSize15Y2=aBoxProgStroke3Y+aBoxWH;
      }
      //Rect
      if (aShapeRectProgX > aBoxShapeProgX - halfBoxWH && aShapeRectProgX + aShapeWH  < aBoxShapeProgX + aBoxWH + halfBoxWH && aShapeRectProgY  > aBoxShapeProgY - halfBoxWH && aShapeRectProgY + aShapeWH < aBoxShapeProgY +aBoxWH + halfBoxWH){
      aShapeSelectorProg=3;
      aShapeRectProgX=aBoxShapeProgX+5;
      aShapeRectProgY=aBoxShapeProgY+5;
      }
      //ellipse
      if (aShapeEllipseProgX > aBoxShapeProgX  && aShapeEllipseProgX < aBoxShapeProgX + aBoxWH && aShapeEllipseProgY  > aBoxShapeProgY && aShapeEllipseProgY< aBoxShapeProgY +aBoxWH ){
      aShapeSelectorProg=2;
      aShapeEllipseProgX=aBoxShapeProgX+halfBoxWH;
      aShapeEllipseProgY=aBoxShapeProgY+halfBoxWH;
      }
        // Drawing Correct Color 
        if (aColor==1){
          stroke(aColor1);
        }
        else if (aColor==2){
          stroke(aColor2);
        }
        else if (aColor==3){
          stroke(aColor3);
        }
        // Drawing Correct Stroke 
        if (aStroke==1){
          strokeWeight(aStrokeDraw1);
        }
        else if (aStroke==2){
          strokeWeight(aStrokeDraw2);  
        }
        else if (aStroke==3){
          strokeWeight(aStrokeDraw3);
        }
      //Draw Ellipse
      if(aShapeSelector==2 && ( mouseX < 510.5 && mouseX >30.5 && mouseY>230.5 && mouseY<810.5)){
        aDrawEllipseW=mouseX-aDrawRectEllipseX;
        aDrawEllipseH=mouseY-aDrawRectEllipseY;
        noFill();
        ellipse(aDrawRectEllipseX, aDrawRectEllipseY, aDrawEllipseW*2, aDrawEllipseH*2);
        }
       //Draw Rect
      if(aShapeSelector==3 && ( mouseX < 510.5 && mouseX >30.5 && mouseY>230.5 && mouseY<810.5)){
        aDrawRectW=mouseX-aDrawRectEllipseX;
        aDrawRectH=mouseY-aDrawRectEllipseY;
        noFill();
        rect(aDrawRectEllipseX, aDrawRectEllipseY, aDrawRectW, aDrawRectH);
        }
        //resetters
        aBoxProgMove=zero; 
        aStrokeSizeMove=zero;
        aShapeMove=zero;
        } 
      }
